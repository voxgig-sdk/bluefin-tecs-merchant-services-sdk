// BluefinTecsMerchantServices SDK - generated model configuration and feature
// factory. GENERATED from the API model - do not edit by hand.

namespace BluefinTecsMerchantServicesSdk;

public static class SdkConfig
{
    public static Dictionary<string, object?> MakeConfig()
    {
        return new Dictionary<string, object?>
        {
            ["main"] = new Dictionary<string, object?>
            {
                ["name"] = "BluefinTecsMerchantServices",
                ["slug"] = "bluefin-tecs-merchant-services",
                ["version"] = "0.1.1",
                ["target"] = "csharp",
            },
            ["feature"] = new Dictionary<string, object?>
            {
                ["audit"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["actor"] = "anonymous",
                        ["max"] = 1000,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["now"] = "`$FUNCTION`",
                        ["sink"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["clienttrack"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["clientVersion"] = "0.0.1",
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["clientName"] = "`$STRING`",
                        ["clientVersion"] = "`$STRING`",
                        ["headers"] = "`$MAP`",
                        ["idgen"] = "`$FUNCTION`",
                        ["sessionId"] = "`$STRING`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["debug"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["max"] = 100,
                        ["redact"] = new List<object?>
                        {
                            "authorization",
                            "cookie",
                            "set-cookie",
                            "api-key",
                            "apikey",
                            "x-api-key",
                            "idempotency-key",
                        },
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["now"] = "`$FUNCTION`",
                        ["onEntry"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["idempotency"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["header"] = "Idempotency-Key",
                        ["methods"] = new List<object?>
                        {
                            "POST",
                            "PUT",
                            "PATCH",
                            "DELETE",
                        },
                        ["ops"] = new List<object?>
                        {
                            "create",
                            "update",
                            "remove",
                        },
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["keygen"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["log"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = true,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["level"] = "`$STRING`",
                        ["logger"] = "`$ANY`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["metrics"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["now"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["paging"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["afterVar"] = "after",
                        ["cursorParam"] = "cursor",
                        ["firstVar"] = "first",
                        ["limitParam"] = "limit",
                        ["pageParam"] = "page",
                        ["startPage"] = 1,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["limit"] = "`$NUMBER`",
                        ["ops"] = "`$LIST`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["ratelimit"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["burst"] = 5,
                        ["rate"] = 5,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["now"] = "`$FUNCTION`",
                        ["sleep"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "wrap",
                },
                ["retry"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["factor"] = 2,
                        ["maxDelay"] = 2000,
                        ["minDelay"] = 50,
                        ["retries"] = 2,
                        ["statuses"] = new List<object?>
                        {
                            408,
                            425,
                            429,
                            500,
                            502,
                            503,
                            504,
                        },
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["jitter"] = "`$BOOLEAN`",
                        ["sleep"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "wrap",
                },
                ["telemetry"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["exporter"] = "`$FUNCTION`",
                        ["headers"] = "`$MAP`",
                        ["idgen"] = "`$FUNCTION`",
                        ["now"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["test"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["entity"] = "`$MAP`",
                        ["net"] = "`$MAP`",
                    },
                    ["strict"] = false,
                    ["transport"] = "base",
                },
                ["timeout"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["ms"] = 30000,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["clearTimer"] = "`$FUNCTION`",
                        ["setTimer"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "wrap",
                },
            },
            ["options"] = new Dictionary<string, object?>
            {
                ["base"] = "https://test.tecs.at/merchantservices",
                ["auth"] = new Dictionary<string, object?>
                {
                    ["prefix"] = "Bearer",
                },
                ["headers"] = new Dictionary<string, object?>
                {
                    ["content-type"] = "application/json",
                },
                ["entity"] = new Dictionary<string, object?>
                {
                    ["cancel_transaction"] = new Dictionary<string, object?>(),
                    ["check_card_black_listed"] = new Dictionary<string, object?>(),
                    ["count_authorised_transaction"] = new Dictionary<string, object?>(),
                    ["count_not_authorised_transaction"] = new Dictionary<string, object?>(),
                    ["create_product"] = new Dictionary<string, object?>(),
                    ["deactivate_terminal"] = new Dictionary<string, object?>(),
                    ["digital_services_api"] = new Dictionary<string, object?>(),
                    ["ec_data_ecom"] = new Dictionary<string, object?>(),
                    ["ecom_parameter"] = new Dictionary<string, object?>(),
                    ["ecr_data"] = new Dictionary<string, object?>(),
                    ["emv_data"] = new Dictionary<string, object?>(),
                    ["enable_acquiring"] = new Dictionary<string, object?>(),
                    ["get_merchant_contract_number"] = new Dictionary<string, object?>(),
                    ["get_template_xml"] = new Dictionary<string, object?>(),
                    ["introduce_mandator"] = new Dictionary<string, object?>(),
                    ["introduce_package"] = new Dictionary<string, object?>(),
                    ["keep_alive"] = new Dictionary<string, object?>(),
                    ["list_terminal"] = new Dictionary<string, object?>(),
                    ["mandator_clearing_export"] = new Dictionary<string, object?>(),
                    ["mandator_clearing_export_download"] = new Dictionary<string, object?>(),
                    ["mandator_clearing_export_summary"] = new Dictionary<string, object?>(),
                    ["merchant_portal_services_api"] = new Dictionary<string, object?>(),
                    ["move_tid"] = new Dictionary<string, object?>(),
                    ["payment_manual"] = new Dictionary<string, object?>(),
                    ["payment_sred"] = new Dictionary<string, object?>(),
                    ["pre_auth_transaction_completion"] = new Dictionary<string, object?>(),
                    ["reactivate_terminal"] = new Dictionary<string, object?>(),
                    ["refund_transaction"] = new Dictionary<string, object?>(),
                    ["register_tecs_company"] = new Dictionary<string, object?>(),
                    ["register_terminal"] = new Dictionary<string, object?>(),
                    ["report_data"] = new Dictionary<string, object?>(),
                    ["status_transaction"] = new Dictionary<string, object?>(),
                    ["store_terminal_parameter"] = new Dictionary<string, object?>(),
                    ["terminal_id"] = new Dictionary<string, object?>(),
                    ["transaction_history"] = new Dictionary<string, object?>(),
                    ["transactions_count_card_brand"] = new Dictionary<string, object?>(),
                    ["transactions_turnover"] = new Dictionary<string, object?>(),
                    ["update_merchant"] = new Dictionary<string, object?>(),
                    ["update_template_xml"] = new Dictionary<string, object?>(),
                    ["version"] = new Dictionary<string, object?>(),
                },
            },
            ["entity"] = new Dictionary<string, object?>
            {
                ["cancel_transaction"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "acquirerId",
                            ["title"] = "Acquirer Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "acquirerName",
                            ["title"] = "Acquirer Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "actualBonusPoints",
                            ["title"] = "Actual Bonus Points",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "amount",
                            ["title"] = "Amount",
                            ["type"] = "`$INTEGER`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$INTEGER`",
                                },
                            },
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "authorizationCode",
                            ["title"] = "Authorization Code",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "balanceAmount",
                            ["title"] = "Balance Amount",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardBrand",
                            ["title"] = "Card Brand",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardNumber",
                            ["title"] = "Card Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clientId",
                            ["title"] = "Client Id",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "currency",
                            ["title"] = "Currency",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cvc",
                            ["title"] = "Cvc",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "ecData",
                            ["title"] = "Ec Data",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "ecrData",
                            ["title"] = "Ecr Data",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "emvData",
                            ["title"] = "Emv Data",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "exchangeFee",
                            ["title"] = "Exchange Fee",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int64",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "exchangeRate",
                            ["title"] = "Exchange Rate",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "languageCode",
                            ["title"] = "Language Code",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantAddress",
                            ["title"] = "Merchant Address",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantName",
                            ["title"] = "Merchant Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantNumber",
                            ["title"] = "Merchant Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "messageType",
                            ["title"] = "Message Type",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "originalTraceNumber",
                            ["title"] = "Original Trace Number",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "originalTransactionId",
                            ["title"] = "Original Transaction Id",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "password",
                            ["title"] = "Password",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "paymentReason",
                            ["title"] = "Payment Reason",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptFooter",
                            ["title"] = "Receipt Footer",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptHeader",
                            ["title"] = "Receipt Header",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptLayout",
                            ["title"] = "Receipt Layout",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptNumber",
                            ["title"] = "Receipt Number",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "serialNumber",
                            ["title"] = "Serial Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "svc",
                            ["title"] = "Svc",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalLocation",
                            ["title"] = "Terminal Location",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "traceNumber",
                            ["title"] = "Trace Number",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDate",
                            ["title"] = "Transaction Date",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionId",
                            ["title"] = "Transaction Id",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "txType",
                            ["title"] = "Tx Type",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "userData",
                            ["title"] = "User Data",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "cancel_transaction",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/cancelTransaction",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "cancelTransaction",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "cancelTransaction",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["check_card_black_listed"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardNo",
                            ["title"] = "Card No",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "check_card_black_listed",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/checkCardBlackListed",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "checkCardBlackListed",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "checkCardBlackListed",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["count_authorised_transaction"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "period",
                            ["title"] = "Period",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDateFrom",
                            ["title"] = "Transaction Date From",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDateTo",
                            ["title"] = "Transaction Date To",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionsCount",
                            ["title"] = "Transactions Count",
                            ["type"] = "`$ARRAY`",
                        },
                    },
                    ["name"] = "count_authorised_transaction",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/countAuthorisedTransactions",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "countAuthorisedTransactions",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "countAuthorisedTransactions",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["count_not_authorised_transaction"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "period",
                            ["title"] = "Period",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDateFrom",
                            ["title"] = "Transaction Date From",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDateTo",
                            ["title"] = "Transaction Date To",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionsCount",
                            ["title"] = "Transactions Count",
                            ["type"] = "`$ARRAY`",
                        },
                    },
                    ["name"] = "count_not_authorised_transaction",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/countNotAuthorisedTransactions",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "countNotAuthorisedTransactions",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "countNotAuthorisedTransactions",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["create_product"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "acquirerId",
                            ["title"] = "Acquirer Id",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "templateName",
                            ["title"] = "Template Name",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "templateType",
                            ["title"] = "Template Type",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "templateXml",
                            ["title"] = "Template Xml",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalType",
                            ["title"] = "Terminal Type",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                    },
                    ["name"] = "create_product",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/createProduct",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "createProduct",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "createProduct",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["deactivate_terminal"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "corporateUuid",
                            ["title"] = "Corporate Uuid",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "deactivationReason",
                            ["title"] = "Deactivation Reason",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "packageOrderUuid",
                            ["title"] = "Package Order Uuid",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "productOrderUuid",
                            ["title"] = "Product Order Uuid",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["format"] = "int32",
                        },
                    },
                    ["name"] = "deactivate_terminal",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/deactivateTerminal",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "deactivateTerminal",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "deactivateTerminal",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["digital_services_api"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingDateFrom",
                            ["title"] = "Clearing Date From",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingDateTo",
                            ["title"] = "Clearing Date To",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "txCount",
                            ["title"] = "Tx Count",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "txIdEnd",
                            ["title"] = "Tx Id End",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "txIdStart",
                            ["title"] = "Tx Id Start",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "txSeqNoEnd",
                            ["title"] = "Tx Seq No End",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "txSeqNoStart",
                            ["title"] = "Tx Seq No Start",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "txTotal",
                            ["title"] = "Tx Total",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                    },
                    ["name"] = "digital_services_api",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "digitalservices",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "mandatorClearingExportDownload",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["var"] = "file_id",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "digitalservices",
                                        "mandatorClearingExportDownload",
                                        "{file_id}",
                                    },
                                    ["rename"] = new Dictionary<string, object?>
                                    {
                                        ["param"] = new Dictionary<string, object?>
                                        {
                                            ["fileId"] = "file_id",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["params"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "file_id",
                                                ["orig"] = "file_id",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "param",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "file_id",
                                        },
                                    },
                                },
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/digitalservices/mandatorClearingExportMetadata",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "digitalservices",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "mandatorClearingExportMetadata",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "digitalservices",
                                        "mandatorClearingExportMetadata",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                        ["load"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "load",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "GET",
                                    ["orig"] = "/public/digitalservices/mandatorClearingExportDownload/status",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "digitalservices",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "mandatorClearingExportDownload",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "status",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "digitalservices",
                                        "mandatorClearingExportDownload",
                                        "status",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>
                        {
                            new List<object?>
                            {
                                "$.main.kit.entity.mandator_clearing_export_download",
                            },
                        },
                    },
                },
                ["ec_data_ecom"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "ecomData",
                            ["title"] = "Ecom Data",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionId",
                            ["title"] = "Transaction Id",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionType",
                            ["title"] = "Transaction Type",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                    },
                    ["name"] = "ec_data_ecom",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/getEcData",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "getEcData",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "getEcData",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["ecom_parameter"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "ecomPass",
                            ["title"] = "Ecom Pass",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "ecomSkey",
                            ["title"] = "Ecom Skey",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["format"] = "int32",
                        },
                    },
                    ["name"] = "ecom_parameter",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/getEcomParameters",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "getEcomParameters",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "getEcomParameters",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["ecr_data"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "ecrData",
                            ["title"] = "Ecr Data",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionId",
                            ["title"] = "Transaction Id",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionType",
                            ["title"] = "Transaction Type",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                    },
                    ["name"] = "ecr_data",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/getEcrData",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "getEcrData",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "getEcrData",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["emv_data"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "emvData",
                            ["title"] = "Emv Data",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionId",
                            ["title"] = "Transaction Id",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionType",
                            ["title"] = "Transaction Type",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                    },
                    ["name"] = "emv_data",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/getEmvData",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "getEmvData",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "getEmvData",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["enable_acquiring"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "accountNo",
                            ["title"] = "Account No",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "additionalData",
                            ["title"] = "Additional Data",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "corporateUuid",
                            ["title"] = "Corporate Uuid",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "currency",
                            ["title"] = "Currency",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantCategoryCode",
                            ["title"] = "Merchant Category Code",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "packageOrderUuid",
                            ["title"] = "Package Order Uuid",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "productOrderUuid",
                            ["title"] = "Product Order Uuid",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "sortingCode",
                            ["title"] = "Sorting Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "templateName",
                            ["title"] = "Template Name",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalIdAcq",
                            ["title"] = "Terminal Id Acq",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalIds",
                            ["title"] = "Terminal Ids",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "vuNummer",
                            ["title"] = "Vu Nummer",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "enable_acquiring",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/enableAcquiring",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "enableAcquiring",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "enableAcquiring",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["get_merchant_contract_number"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantContractNumber",
                            ["title"] = "Merchant Contract Number",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "get_merchant_contract_number",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/getMerchantContractNumber",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "getMerchantContractNumber",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "getMerchantContractNumber",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["get_template_xml"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "templateName",
                            ["title"] = "Template Name",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                    },
                    ["name"] = "get_template_xml",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/getTemplateXml",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "getTemplateXml",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "getTemplateXml",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["introduce_mandator"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "mandatorName",
                            ["title"] = "Mandator Name",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "introduce_mandator",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/introduceMandator",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "introduceMandator",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "introduceMandator",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["introduce_package"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalTemplateDescription",
                            ["title"] = "Terminal Template Description",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                    },
                    ["name"] = "introduce_package",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/introducePackage",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "introducePackage",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "introducePackage",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["keep_alive"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "hwserialno",
                            ["title"] = "Hwserialno",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "kaDateTimeFrom",
                            ["title"] = "Ka Date Time From",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "kaDateTimeTo",
                            ["title"] = "Ka Date Time To",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "keepAliveData",
                            ["title"] = "Keep Alive Data",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["title"] = "Pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalDateTimeFrom",
                            ["title"] = "Terminal Date Time From",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalDateTimeTo",
                            ["title"] = "Terminal Date Time To",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                    },
                    ["name"] = "keep_alive",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/keepalive",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "keepalive",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "keepalive",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["list_terminal"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "corporateUuid",
                            ["title"] = "Corporate Uuid",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "filter",
                            ["title"] = "Filter",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["title"] = "Pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminals",
                            ["title"] = "Terminals",
                            ["type"] = "`$ARRAY`",
                        },
                    },
                    ["name"] = "list_terminal",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/listTerminals",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "listTerminals",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "listTerminals",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["mandator_clearing_export"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingDateFrom",
                            ["title"] = "Clearing Date From",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingDateTo",
                            ["title"] = "Clearing Date To",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["title"] = "Pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "records",
                            ["title"] = "Records",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "mandator_clearing_export",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/digitalservices/mandatorClearingExport",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "digitalservices",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "mandatorClearingExport",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "digitalservices",
                                        "mandatorClearingExport",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["mandator_clearing_export_download"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingDateFrom",
                            ["title"] = "Clearing Date From",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Start date for clearing export (inclusive)",
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingDateTo",
                            ["title"] = "Clearing Date To",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "End date for clearing export (inclusive)",
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "fileId",
                            ["title"] = "File Id",
                            ["type"] = "`$STRING`",
                            ["short"] = "Unique file identifier for tracking and downloading",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "filenameTemplate",
                            ["title"] = "Filename Template",
                            ["type"] = "`$STRING`",
                            ["short"] = "Optional filename template for the export file",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "id",
                            ["title"] = "Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "status",
                            ["title"] = "Status",
                            ["type"] = "`$STRING`",
                            ["short"] = "Processing status of the export request",
                        },
                    },
                    ["id"] = new Dictionary<string, object?>
                    {
                        ["field"] = "id",
                        ["name"] = "id",
                    },
                    ["name"] = "mandator_clearing_export_download",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/digitalservices/mandatorClearingExportDownload",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "digitalservices",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "mandatorClearingExportDownload",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "digitalservices",
                                        "mandatorClearingExportDownload",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                        ["load"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "load",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "GET",
                                    ["orig"] = "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "digitalservices",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "mandatorClearingExportDownload",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["var"] = "id",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "digitalservices",
                                        "mandatorClearingExportDownload",
                                        "{id}",
                                    },
                                    ["rename"] = new Dictionary<string, object?>
                                    {
                                        ["param"] = new Dictionary<string, object?>
                                        {
                                            ["fileId"] = "id",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["params"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "id",
                                                ["orig"] = "file_id",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "param",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "id",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["mandator_clearing_export_summary"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingDateFrom",
                            ["title"] = "Clearing Date From",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingDateTo",
                            ["title"] = "Clearing Date To",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Date and time in the format yyyy-MM-dd'T'HH:mm:ssz",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "records",
                            ["title"] = "Records",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "mandator_clearing_export_summary",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/digitalservices/mandatorClearingExportSummary",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "digitalservices",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "mandatorClearingExportSummary",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "digitalservices",
                                        "mandatorClearingExportSummary",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["merchant_portal_services_api"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "3DSecure",
                            ["title"] = "3 D Secure",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "authorizationCode",
                            ["title"] = "Authorization Code",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardBrand",
                            ["title"] = "Card Brand",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingAmountFrom",
                            ["title"] = "Clearing Amount From",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingAmountTo",
                            ["title"] = "Clearing Amount To",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingCurrency",
                            ["title"] = "Clearing Currency",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingStatus",
                            ["title"] = "Clearing Status",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "corporateUUID",
                            ["title"] = "Corporate Uuid",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "orderByTransactionDate",
                            ["title"] = "Order By Transaction Date",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["title"] = "Pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptNumber",
                            ["title"] = "Receipt Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "referencedTransactionId",
                            ["title"] = "Referenced Transaction Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "retrievalReferenceNumber",
                            ["title"] = "Retrieval Reference Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "sourceId",
                            ["title"] = "Source Id",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "tecsengineResponseCodeFrom",
                            ["title"] = "Tecsengine Response Code From",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "tecsengineResponseCodeTo",
                            ["title"] = "Tecsengine Response Code To",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "traceNumber",
                            ["title"] = "Trace Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionAmountFrom",
                            ["title"] = "Transaction Amount From",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionAmountTo",
                            ["title"] = "Transaction Amount To",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDateFrom",
                            ["title"] = "Transaction Date From",
                            ["type"] = "`$STRING`",
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDateTo",
                            ["title"] = "Transaction Date To",
                            ["type"] = "`$STRING`",
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionId",
                            ["title"] = "Transaction Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionType",
                            ["title"] = "Transaction Type",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "wallet",
                            ["title"] = "Wallet",
                            ["type"] = "`$STRING`",
                            ["short"] = "Filter by wallet type.",
                        },
                    },
                    ["name"] = "merchant_portal_services_api",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/transactionHistoryCsv",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "transactionHistoryCsv",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "transactionHistoryCsv",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["move_tid"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "productorderuuids",
                            ["title"] = "Productorderuuids",
                            ["type"] = "`$ARRAY`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "targetPackageorderuuid",
                            ["title"] = "Target Packageorderuuid",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "targetProductorderuuid",
                            ["title"] = "Target Productorderuuid",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "move_tid",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/moveTid",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "moveTid",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "moveTid",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["payment_manual"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "acquirerName",
                            ["title"] = "Acquirer Name",
                            ["type"] = "`$STRING`",
                            ["short"] = "Acquirer name parsed from KKG field",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "amount",
                            ["title"] = "Amount",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["short"] = "Transaction amount in minor units (cents)",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "authorizationNumber",
                            ["title"] = "Authorization Number",
                            ["type"] = "`$STRING`",
                            ["short"] = "Authorization number from the gateway",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardNumber",
                            ["title"] = "Card Number",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Card number - 12 to 19 digits, must pass Luhn validation",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardType",
                            ["title"] = "Card Type",
                            ["type"] = "`$STRING`",
                            ["short"] = "Card type parsed from KKG field",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "currency",
                            ["title"] = "Currency",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Currency code - 3 uppercase letters (ISO 4217)",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cvc",
                            ["title"] = "Cvc",
                            ["type"] = "`$STRING`",
                            ["short"] = "Card verification code - 3-4 digits (optional)",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "dateTimeTx",
                            ["title"] = "Date Time Tx",
                            ["type"] = "`$STRING`",
                            ["short"] = "Date and time of the transaction",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "expDate",
                            ["title"] = "Exp Date",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Card expiry date in MMYY format",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantId",
                            ["title"] = "Merchant Id",
                            ["type"] = "`$STRING`",
                            ["short"] = "Merchant ID (VU-NUMMER)",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "originalTransactionId",
                            ["title"] = "Original Transaction Id",
                            ["type"] = "`$STRING`",
                            ["short"] = "Original transaction ID from gateway",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "password",
                            ["title"] = "Password",
                            ["type"] = "`$STRING`",
                            ["short"] = "Terminal password sent as Kennwort in TECS XML (optional)",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$STRING`",
                            ["short"] = "Response code - 00 for success, otherwise error code",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                            ["short"] = "Response message - 'Approved' for success, error description otherwise",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["short"] = "Terminal ID used for the transaction",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionId",
                            ["title"] = "Transaction Id",
                            ["type"] = "`$STRING`",
                            ["short"] = "Transaction ID generated by the backend",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "txtype",
                            ["title"] = "Txtype",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Transaction type",
                        },
                    },
                    ["name"] = "payment_manual",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/paymentManual",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "paymentManual",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "paymentManual",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["payment_sred"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "amount",
                            ["title"] = "Amount",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["short"] = "Transaction amount in minor units (cents)",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "currency",
                            ["title"] = "Currency",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Currency code - 3 uppercase letters (ISO 4217)",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "device",
                            ["title"] = "Device",
                            ["type"] = "`$STRING`",
                            ["short"] = "Device type that provided the SRED payload",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "devicePayload",
                            ["title"] = "Device Payload",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "SRED encrypted device payload from the device (minimum 32 characters)",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "expDate",
                            ["title"] = "Exp Date",
                            ["type"] = "`$STRING`",
                            ["short"] = "Card expiry date in MMYY format",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "mode",
                            ["title"] = "Mode",
                            ["type"] = "`$STRING`",
                            ["short"] = "Decryption mode",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "panMasked",
                            ["title"] = "Pan Masked",
                            ["type"] = "`$STRING`",
                            ["short"] = "Masked PAN (first 6 and last 4 digits)",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "password",
                            ["title"] = "Password",
                            ["type"] = "`$STRING`",
                            ["short"] = "Terminal password sent as Kennwort in TECS XML (optional)",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "serial",
                            ["title"] = "Serial",
                            ["type"] = "`$STRING`",
                            ["short"] = "Device serial number",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "serviceCode",
                            ["title"] = "Service Code",
                            ["type"] = "`$STRING`",
                            ["short"] = "Service code from the card",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Terminal ID - 8 digits",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "txtype",
                            ["title"] = "Txtype",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Transaction type",
                        },
                    },
                    ["name"] = "payment_sred",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/paymentSred",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "paymentSred",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "paymentSred",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body.sred`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["pre_auth_transaction_completion"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "acquirerId",
                            ["title"] = "Acquirer Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "acquirerName",
                            ["title"] = "Acquirer Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "actualBonusPoints",
                            ["title"] = "Actual Bonus Points",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "amount",
                            ["title"] = "Amount",
                            ["type"] = "`$INTEGER`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$INTEGER`",
                                },
                            },
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "authorizationCode",
                            ["title"] = "Authorization Code",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "balanceAmount",
                            ["title"] = "Balance Amount",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardBrand",
                            ["title"] = "Card Brand",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardNumber",
                            ["title"] = "Card Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardNumberReference",
                            ["title"] = "Card Number Reference",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clientId",
                            ["title"] = "Client Id",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "currency",
                            ["title"] = "Currency",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cvc",
                            ["title"] = "Cvc",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "ecData",
                            ["title"] = "Ec Data",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "ecrData",
                            ["title"] = "Ecr Data",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "emvData",
                            ["title"] = "Emv Data",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "exchangeFee",
                            ["title"] = "Exchange Fee",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int64",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "exchangeRate",
                            ["title"] = "Exchange Rate",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "languageCode",
                            ["title"] = "Language Code",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantAddress",
                            ["title"] = "Merchant Address",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantName",
                            ["title"] = "Merchant Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantNumber",
                            ["title"] = "Merchant Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "messageType",
                            ["title"] = "Message Type",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "originalTraceNumber",
                            ["title"] = "Original Trace Number",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "originalTransactionId",
                            ["title"] = "Original Transaction Id",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "password",
                            ["title"] = "Password",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "paymentReason",
                            ["title"] = "Payment Reason",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptFooter",
                            ["title"] = "Receipt Footer",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptHeader",
                            ["title"] = "Receipt Header",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptLayout",
                            ["title"] = "Receipt Layout",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptNumber",
                            ["title"] = "Receipt Number",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "serialNumber",
                            ["title"] = "Serial Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "svc",
                            ["title"] = "Svc",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalLocation",
                            ["title"] = "Terminal Location",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "traceNumber",
                            ["title"] = "Trace Number",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDate",
                            ["title"] = "Transaction Date",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionId",
                            ["title"] = "Transaction Id",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionType",
                            ["title"] = "Transaction Type",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "txType",
                            ["title"] = "Tx Type",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "userData",
                            ["title"] = "User Data",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "pre_auth_transaction_completion",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/paymentTransaction",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "paymentTransaction",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "paymentTransaction",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/preAuthCompletionTransaction",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "preAuthCompletionTransaction",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "preAuthCompletionTransaction",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["reactivate_terminal"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "corporateUuid",
                            ["title"] = "Corporate Uuid",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "packageOrderUuid",
                            ["title"] = "Package Order Uuid",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "productOrderUuid",
                            ["title"] = "Product Order Uuid",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "reactivationReason",
                            ["title"] = "Reactivation Reason",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["format"] = "int32",
                        },
                    },
                    ["name"] = "reactivate_terminal",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/reactivateTerminal",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "reactivateTerminal",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "reactivateTerminal",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["refund_transaction"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "acquirerId",
                            ["title"] = "Acquirer Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "acquirerName",
                            ["title"] = "Acquirer Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "actualBonusPoints",
                            ["title"] = "Actual Bonus Points",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "amount",
                            ["title"] = "Amount",
                            ["type"] = "`$INTEGER`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$INTEGER`",
                                },
                            },
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "authorizationCode",
                            ["title"] = "Authorization Code",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "balanceAmount",
                            ["title"] = "Balance Amount",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardBrand",
                            ["title"] = "Card Brand",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardNumber",
                            ["title"] = "Card Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clientId",
                            ["title"] = "Client Id",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "currency",
                            ["title"] = "Currency",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cvc",
                            ["title"] = "Cvc",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "ecData",
                            ["title"] = "Ec Data",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "ecrData",
                            ["title"] = "Ecr Data",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "emvData",
                            ["title"] = "Emv Data",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "exchangeFee",
                            ["title"] = "Exchange Fee",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int64",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "exchangeRate",
                            ["title"] = "Exchange Rate",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "languageCode",
                            ["title"] = "Language Code",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantAddress",
                            ["title"] = "Merchant Address",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantName",
                            ["title"] = "Merchant Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantNumber",
                            ["title"] = "Merchant Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "messageType",
                            ["title"] = "Message Type",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "originalTraceNumber",
                            ["title"] = "Original Trace Number",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "originalTransactionId",
                            ["title"] = "Original Transaction Id",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "password",
                            ["title"] = "Password",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "paymentReason",
                            ["title"] = "Payment Reason",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptFooter",
                            ["title"] = "Receipt Footer",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptHeader",
                            ["title"] = "Receipt Header",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptLayout",
                            ["title"] = "Receipt Layout",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptNumber",
                            ["title"] = "Receipt Number",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "serialNumber",
                            ["title"] = "Serial Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "svc",
                            ["title"] = "Svc",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["req"] = true,
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalLocation",
                            ["title"] = "Terminal Location",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "traceNumber",
                            ["title"] = "Trace Number",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDate",
                            ["title"] = "Transaction Date",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionId",
                            ["title"] = "Transaction Id",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "txType",
                            ["title"] = "Tx Type",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "userData",
                            ["title"] = "User Data",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "refund_transaction",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/refundTransaction",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "refundTransaction",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "refundTransaction",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["register_tecs_company"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "corporateUuid",
                            ["title"] = "Corporate Uuid",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "packageOrderUuid",
                            ["title"] = "Package Order Uuid",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "partnerId",
                            ["title"] = "Partner Id",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "partnerName",
                            ["title"] = "Partner Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "productOrderUuid",
                            ["title"] = "Product Order Uuid",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "templateName",
                            ["title"] = "Template Name",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                    },
                    ["name"] = "register_tecs_company",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/registerTecsCompany",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "registerTecsCompany",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "registerTecsCompany",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["register_terminal"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "additionalData",
                            ["title"] = "Additional Data",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "corporateUuid",
                            ["title"] = "Corporate Uuid",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "packageOrderUuid",
                            ["title"] = "Package Order Uuid",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "productOrderUuid",
                            ["title"] = "Product Order Uuid",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "tecsWebSecretKey",
                            ["title"] = "Tecs Web Secret Key",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "templateName",
                            ["title"] = "Template Name",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalCountryCode",
                            ["title"] = "Terminal Country Code",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalIdAcq",
                            ["title"] = "Terminal Id Acq",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalLanguageCode",
                            ["title"] = "Terminal Language Code",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalLocation",
                            ["title"] = "Terminal Location",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalSerialNumber",
                            ["title"] = "Terminal Serial Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "tokenIOAlias",
                            ["title"] = "Token Io Alias",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "tokenIOIban",
                            ["title"] = "Token Io Iban",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "tokenIOMemberId",
                            ["title"] = "Token Io Member Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "webShopUrl",
                            ["title"] = "Web Shop Url",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "register_terminal",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/registerTerminal",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "registerTerminal",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "registerTerminal",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["report_data"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardBrandReportData",
                            ["title"] = "Card Brand Report Data",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingDateFrom",
                            ["title"] = "Clearing Date From",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Date and time in the format yyyy-MM-dd'T'HH:mm:ss",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingDateTo",
                            ["title"] = "Clearing Date To",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Date and time in the format yyyy-MM-dd'T'HH:mm:ss",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "corporateId",
                            ["title"] = "Corporate Id",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "currency",
                            ["title"] = "Currency",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "sumOverCreditTx",
                            ["title"] = "Sum Over Credit Tx",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "sumOverDebitTx",
                            ["title"] = "Sum Over Debit Tx",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                    },
                    ["name"] = "report_data",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/digitalservices/reportData",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "digitalservices",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "reportData",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "digitalservices",
                                        "reportData",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["status_transaction"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "acquirerName",
                            ["title"] = "Acquirer Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "acquirerTerminalId",
                            ["title"] = "Acquirer Terminal Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "amount",
                            ["title"] = "Amount",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "applicationCryptogram",
                            ["title"] = "Application Cryptogram",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "authorizationCode",
                            ["title"] = "Authorization Code",
                            ["type"] = new List<object?>
                            {
                                "`$ONE`",
                                new List<object?>
                                {
                                    "`$STRING`",
                                    "`$NULL`",
                                },
                            },
                            ["short"] = "Authorization code returned by the acquirer; null when not available",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "authorizationDate",
                            ["title"] = "Authorization Date",
                            ["type"] = "`$STRING`",
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardBrand",
                            ["title"] = "Card Brand",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardEntry",
                            ["title"] = "Card Entry",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardExpiration",
                            ["title"] = "Card Expiration",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardNumber",
                            ["title"] = "Card Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingAmount",
                            ["title"] = "Clearing Amount",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingBatchId",
                            ["title"] = "Clearing Batch Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingCurrency",
                            ["title"] = "Clearing Currency",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingDate",
                            ["title"] = "Clearing Date",
                            ["type"] = "`$STRING`",
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingProcessedDate",
                            ["title"] = "Clearing Processed Date",
                            ["type"] = "`$STRING`",
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingStatus",
                            ["title"] = "Clearing Status",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clientId",
                            ["title"] = "Client Id",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "currency",
                            ["title"] = "Currency",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cvm",
                            ["title"] = "Cvm",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "ecrData",
                            ["title"] = "Ecr Data",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "emvApplicationId",
                            ["title"] = "Emv Application Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "emvApplicationLabel",
                            ["title"] = "Emv Application Label",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantName",
                            ["title"] = "Merchant Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantNumber",
                            ["title"] = "Merchant Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "originalClientId",
                            ["title"] = "Original Client Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "originalTerminalId",
                            ["title"] = "Original Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "originalTransactionId",
                            ["title"] = "Original Transaction Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "paymentReason",
                            ["title"] = "Payment Reason",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptNumber",
                            ["title"] = "Receipt Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCodeFromAS",
                            ["title"] = "Response Code From As",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "retrievalReferenceNumber",
                            ["title"] = "Retrieval Reference Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "serviceCode",
                            ["title"] = "Service Code",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "settlementStatus",
                            ["title"] = "Settlement Status",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "sourceId",
                            ["title"] = "Source Id",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "tecsengineResponseCode",
                            ["title"] = "Tecsengine Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "tecsengineResponseText",
                            ["title"] = "Tecsengine Response Text",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalEndOfDayDate",
                            ["title"] = "Terminal End Of Day Date",
                            ["type"] = "`$STRING`",
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalLocation",
                            ["title"] = "Terminal Location",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "tipAmount",
                            ["title"] = "Tip Amount",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "traceNumber",
                            ["title"] = "Trace Number",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionClearingDate",
                            ["title"] = "Transaction Clearing Date",
                            ["type"] = "`$STRING`",
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDate",
                            ["title"] = "Transaction Date",
                            ["type"] = "`$STRING`",
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionId",
                            ["title"] = "Transaction Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionSeqNumber",
                            ["title"] = "Transaction Seq Number",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int64",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionServerDate",
                            ["title"] = "Transaction Server Date",
                            ["type"] = "`$STRING`",
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionSource",
                            ["title"] = "Transaction Source",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionType",
                            ["title"] = "Transaction Type",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "status_transaction",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/statusTransaction",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "statusTransaction",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "statusTransaction",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["store_terminal_parameter"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "acqTabNexo",
                            ["title"] = "Acq Tab Nexo",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "configVersion",
                            ["title"] = "Config Version",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "serialNumber",
                            ["title"] = "Serial Number",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "tidSent",
                            ["title"] = "Tid Sent",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "store_terminal_parameter",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/storeTerminalParameters",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "storeTerminalParameters",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "storeTerminalParameters",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["terminal_id"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "deviceSerialNumber",
                            ["title"] = "Device Serial Number",
                            ["type"] = "`$ARRAY`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "duplicateTerminalIds",
                            ["title"] = "Duplicate Terminal Ids",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminals",
                            ["title"] = "Terminals",
                            ["type"] = "`$ARRAY`",
                        },
                    },
                    ["name"] = "terminal_id",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/getTerminalId",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "getTerminalId",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "getTerminalId",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["transaction_history"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "3DSecure",
                            ["title"] = "3 D Secure",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "authorizationCode",
                            ["title"] = "Authorization Code",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "cardBrand",
                            ["title"] = "Card Brand",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingAmountFrom",
                            ["title"] = "Clearing Amount From",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingAmountTo",
                            ["title"] = "Clearing Amount To",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingCurrency",
                            ["title"] = "Clearing Currency",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clearingStatus",
                            ["title"] = "Clearing Status",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "corporateUUID",
                            ["title"] = "Corporate Uuid",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "orderByTransactionDate",
                            ["title"] = "Order By Transaction Date",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["title"] = "Pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "paymentTokenPublicId",
                            ["title"] = "Payment Token Public Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "receiptNumber",
                            ["title"] = "Receipt Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "referencedTransactionId",
                            ["title"] = "Referenced Transaction Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "retrievalReferenceNumber",
                            ["title"] = "Retrieval Reference Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "sourceId",
                            ["title"] = "Source Id",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "tecsengineResponseCodeFrom",
                            ["title"] = "Tecsengine Response Code From",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "tecsengineResponseCodeTo",
                            ["title"] = "Tecsengine Response Code To",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "terminalId",
                            ["title"] = "Terminal Id",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "traceNumber",
                            ["title"] = "Trace Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionAmountFrom",
                            ["title"] = "Transaction Amount From",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionAmountTo",
                            ["title"] = "Transaction Amount To",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDateFrom",
                            ["title"] = "Transaction Date From",
                            ["type"] = "`$STRING`",
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDateTo",
                            ["title"] = "Transaction Date To",
                            ["type"] = "`$STRING`",
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionHistories",
                            ["title"] = "Transaction Histories",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionId",
                            ["title"] = "Transaction Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionType",
                            ["title"] = "Transaction Type",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "wallet",
                            ["title"] = "Wallet",
                            ["type"] = "`$STRING`",
                            ["short"] = "Filter by wallet type.",
                        },
                    },
                    ["name"] = "transaction_history",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/mcom/transactionHistory",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "mcom",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "transactionHistory",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "mcom",
                                        "transactionHistory",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/transactionHistory",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "transactionHistory",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "transactionHistory",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["transactions_count_card_brand"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "period",
                            ["title"] = "Period",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDateFrom",
                            ["title"] = "Transaction Date From",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDateTo",
                            ["title"] = "Transaction Date To",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionsCount",
                            ["title"] = "Transactions Count",
                            ["type"] = "`$ARRAY`",
                        },
                    },
                    ["name"] = "transactions_count_card_brand",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/countTransactionsByCardBrand",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "countTransactionsByCardBrand",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "countTransactionsByCardBrand",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["transactions_turnover"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "period",
                            ["title"] = "Period",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDateFrom",
                            ["title"] = "Transaction Date From",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionDateTo",
                            ["title"] = "Transaction Date To",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["format"] = "date-time",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "turnovers",
                            ["title"] = "Turnovers",
                            ["type"] = "`$ARRAY`",
                        },
                    },
                    ["name"] = "transactions_turnover",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/transactionTurnover",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "transactionTurnover",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "transactionTurnover",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["update_merchant"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "city",
                            ["title"] = "City",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "corporateUuid",
                            ["title"] = "Corporate Uuid",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "country",
                            ["title"] = "Country",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "merchantCategoryCode",
                            ["title"] = "Merchant Category Code",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "name",
                            ["title"] = "Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "state",
                            ["title"] = "State",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "street",
                            ["title"] = "Street",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "vuNummer",
                            ["title"] = "Vu Nummer",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "zipcode",
                            ["title"] = "Zipcode",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "update_merchant",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/updateMerchant",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "updateMerchant",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "updateMerchant",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["update_template_xml"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "templateName",
                            ["title"] = "Template Name",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "templateXml",
                            ["title"] = "Template Xml",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                    },
                    ["name"] = "update_template_xml",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/public/updateTemplateXml",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "updateTemplateXml",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "updateTemplateXml",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["version"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "appName",
                            ["title"] = "App Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "buildDate",
                            ["title"] = "Build Date",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "version",
                            ["title"] = "Version",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "version",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["load"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "load",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "GET",
                                    ["orig"] = "/public/version",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "public",
                                        },
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "version",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "version",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
            },
        };
    }

    private static readonly Lazy<Dictionary<string, object?>> SharedConfigVal =
        new(MakeConfig);

    // The process-wide config, built once on first use.
    //
    // The returned dictionary is SHARED: treat it as read-only. Callers that
    // need to mutate should use MakeConfig, which always returns a fresh copy.
    public static Dictionary<string, object?> SharedConfig()
    {
        return SharedConfigVal.Value;
    }

    public static List<object?> FeaturePlugins(string name)
    {
        switch (name)
        {
            default:
                return new List<object?>();
        }
    }

    public static Feature.BaseFeature MakeFeature(string name)
    {
        switch (name)
        {
            case "audit":
                return new Feature.AuditFeature();
            case "clienttrack":
                return new Feature.ClienttrackFeature();
            case "debug":
                return new Feature.DebugFeature();
            case "idempotency":
                return new Feature.IdempotencyFeature();
            case "log":
                return new Feature.LogFeature();
            case "metrics":
                return new Feature.MetricsFeature();
            case "paging":
                return new Feature.PagingFeature();
            case "ratelimit":
                return new Feature.RatelimitFeature();
            case "retry":
                return new Feature.RetryFeature();
            case "telemetry":
                return new Feature.TelemetryFeature();
            case "test":
                return new Feature.TestFeature();
            case "timeout":
                return new Feature.TimeoutFeature();
            default:
                return new Feature.BaseFeature();
        }
    }
}
