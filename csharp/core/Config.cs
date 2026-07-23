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
            },
            ["feature"] = new Dictionary<string, object?>
            {
                ["test"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                    },
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
                    ["transactions_count"] = new Dictionary<string, object?>(),
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
                            ["active"] = true,
                            ["name"] = "acquirer_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "acquirer_name",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "actual_bonus_point",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "amount",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$INTEGER`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "authorization_code",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "balance_amount",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_brand",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 7,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "client_id",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 8,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "currency",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 9,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "cvc",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 10,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "ec_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 11,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "ecr_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 12,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "emv_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 13,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "exchange_fee",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 14,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "exchange_rate",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 15,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "language_code",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 16,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_address",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 17,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_name",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 18,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 19,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "message_type",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 20,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "original_trace_number",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 21,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "original_transaction_id",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 22,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "password",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 23,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "payment_reason",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 24,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_footer",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 25,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_header",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 26,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_layout",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 27,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_number",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 28,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 29,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 30,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "serial_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 31,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "svc",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 32,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 33,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_location",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 34,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "trace_number",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 35,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_date",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 36,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_id",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 37,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tx_type",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 38,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "user_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 39,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/cancelTransaction",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "cancelTransaction",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "card_no",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["active"] = true,
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
                                    ["method"] = "POST",
                                    ["orig"] = "/checkCardBlackListed",
                                    ["parts"] = new List<object?>
                                    {
                                        "checkCardBlackListed",
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "acquirer_id",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "template_name",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "template_type",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "template_xml",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_type",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/createProduct",
                                    ["parts"] = new List<object?>
                                    {
                                        "createProduct",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "corporate_uuid",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "deactivation_reason",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "package_order_uuid",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "product_order_uuid",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 6,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/deactivateTerminal",
                                    ["parts"] = new List<object?>
                                    {
                                        "deactivateTerminal",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "clearing_date_from",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_date_to",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tx_count",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tx_id_end",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tx_id_start",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tx_seq_no_end",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 7,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tx_seq_no_start",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 8,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tx_total",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 9,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["params"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["active"] = true,
                                                ["kind"] = "param",
                                                ["name"] = "file_id",
                                                ["orig"] = "file_id",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                                ["index$"] = 0,
                                            },
                                        },
                                    },
                                    ["method"] = "POST",
                                    ["orig"] = "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "file_id",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                                new Dictionary<string, object?>
                                {
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/digitalservices/mandatorClearingExportMetadata",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "digitalservices",
                                        "mandatorClearingExportMetadata",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 1,
                                },
                            },
                            ["key$"] = "create",
                        },
                        ["load"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "load",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "GET",
                                    ["orig"] = "/public/digitalservices/mandatorClearingExportDownload/status",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "digitalservices",
                                        "mandatorClearingExportDownload",
                                        "status",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "load",
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>
                        {
                            new List<object?>
                            {
                                "mandator_clearing_export_download",
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
                            ["active"] = true,
                            ["name"] = "ecom_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_id",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_type",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/getEcData",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "getEcData",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "ecom_pass",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "ecom_skey",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 4,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/getEcomParameters",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "getEcomParameters",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "ecr_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_id",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_type",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/getEcrData",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "getEcrData",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "emv_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_id",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_type",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/getEmvData",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "getEmvData",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "account_no",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "additional_data",
                            ["req"] = false,
                            ["type"] = "`$OBJECT`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "corporate_uuid",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "currency",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_category_code",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "package_order_uuid",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "product_order_uuid",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 7,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 8,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "sorting_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 9,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "template_name",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 10,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = false,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 11,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id_acq",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 12,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "vu_nummer",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 13,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/enableAcquiring",
                                    ["parts"] = new List<object?>
                                    {
                                        "enableAcquiring",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "merchant_contract_number",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/getMerchantContractNumber",
                                    ["parts"] = new List<object?>
                                    {
                                        "getMerchantContractNumber",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "template_name",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/getTemplateXml",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "getTemplateXml",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "mandator_name",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/introduceMandator",
                                    ["parts"] = new List<object?>
                                    {
                                        "introduceMandator",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_template_description",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/introducePackage",
                                    ["parts"] = new List<object?>
                                    {
                                        "introducePackage",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "hwserialno",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "ka_date_time_from",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "ka_date_time_to",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "keep_alive_data",
                            ["req"] = false,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "pagination",
                            ["req"] = false,
                            ["type"] = "`$OBJECT`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_date_time_from",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 7,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_date_time_to",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 8,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 9,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/keepalive",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "keepalive",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "corporate_uuid",
                            ["req"] = false,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "filter",
                            ["req"] = false,
                            ["type"] = "`$OBJECT`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "pagination",
                            ["req"] = false,
                            ["type"] = "`$OBJECT`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal",
                            ["req"] = false,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 5,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/listTerminals",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "listTerminals",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "clearing_date_from",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_date_to",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "pagination",
                            ["req"] = false,
                            ["type"] = "`$OBJECT`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "record",
                            ["req"] = false,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/digitalservices/mandatorClearingExport",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "digitalservices",
                                        "mandatorClearingExport",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "clearing_date_from",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_date_to",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "file_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "filename_template",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "status",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/digitalservices/mandatorClearingExportDownload",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "digitalservices",
                                        "mandatorClearingExportDownload",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
                        },
                        ["load"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "load",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["params"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["active"] = true,
                                                ["kind"] = "param",
                                                ["name"] = "id",
                                                ["orig"] = "file_id",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                                ["index$"] = 0,
                                            },
                                        },
                                    },
                                    ["method"] = "GET",
                                    ["orig"] = "/public/digitalservices/mandatorClearingExportDownload/{fileId}",
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "id",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "load",
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
                            ["active"] = true,
                            ["name"] = "clearing_date_from",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_date_to",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "record",
                            ["req"] = false,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/digitalservices/mandatorClearingExportSummary",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "digitalservices",
                                        "mandatorClearingExportSummary",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "3_d_secure",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "authorization_code",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_brand",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_amount_from",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_amount_to",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_currency",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_status",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "corporate_uuid",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 7,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "order_by_transaction_date",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 8,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "pagination",
                            ["req"] = false,
                            ["type"] = "`$OBJECT`",
                            ["index$"] = 9,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 10,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "referenced_transaction_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 11,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "retrieval_reference_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 12,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "source_id",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 13,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tecsengine_response_code_from",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 14,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tecsengine_response_code_to",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 15,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 16,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "trace_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 17,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_amount_from",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 18,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_amount_to",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 19,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_date_from",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 20,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_date_to",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 21,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 22,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_type",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 23,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "wallet",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 24,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/transactionHistoryCsv",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "transactionHistoryCsv",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "productorderuuid",
                            ["req"] = true,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "target_packageorderuuid",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "target_productorderuuid",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/moveTid",
                                    ["parts"] = new List<object?>
                                    {
                                        "moveTid",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "acquirer_name",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "amount",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "authorization_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_number",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_type",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "currency",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "cvc",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "date_time_tx",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 7,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "exp_date",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 8,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 9,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "original_transaction_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 10,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "password",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 11,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 12,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 13,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 14,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 15,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "txtype",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 16,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/paymentManual",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "paymentManual",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "acquirer_name",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "amount",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "authorization_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_type",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "currency",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "date_time_tx",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "device_payload",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 7,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "original_transaction_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 8,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "password",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 9,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 10,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 11,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "sred",
                            ["req"] = false,
                            ["type"] = "`$OBJECT`",
                            ["index$"] = 12,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 13,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 14,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "txtype",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 15,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/paymentSred",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "paymentSred",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "acquirer_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "acquirer_name",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "actual_bonus_point",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "amount",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$INTEGER`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "authorization_code",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "balance_amount",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_brand",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 7,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_number_reference",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 8,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "client_id",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 9,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "currency",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 10,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "cvc",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 11,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "ec_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 12,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "ecr_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 13,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "emv_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 14,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "exchange_fee",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 15,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "exchange_rate",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 16,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "language_code",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 17,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_address",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 18,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_name",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 19,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 20,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "message_type",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 21,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "original_trace_number",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 22,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "original_transaction_id",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 23,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "password",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 24,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "payment_reason",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 25,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_footer",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 26,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_header",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 27,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_layout",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 28,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_number",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 29,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 30,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 31,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "serial_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 32,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "svc",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 33,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 34,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_location",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 35,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "trace_number",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 36,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_date",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 37,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_id",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 38,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_type",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 39,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tx_type",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 40,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "user_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 41,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/paymentTransaction",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "paymentTransaction",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                                new Dictionary<string, object?>
                                {
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/preAuthCompletionTransaction",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "preAuthCompletionTransaction",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 1,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "corporate_uuid",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "package_order_uuid",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "product_order_uuid",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "reactivation_reason",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 6,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/reactivateTerminal",
                                    ["parts"] = new List<object?>
                                    {
                                        "reactivateTerminal",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "acquirer_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "acquirer_name",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "actual_bonus_point",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "amount",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$INTEGER`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "authorization_code",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "balance_amount",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_brand",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 7,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "client_id",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 8,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "currency",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 9,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "cvc",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 10,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "ec_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 11,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "ecr_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 12,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "emv_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 13,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "exchange_fee",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 14,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "exchange_rate",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 15,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "language_code",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 16,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_address",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 17,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_name",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 18,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 19,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "message_type",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 20,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "original_trace_number",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 21,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "original_transaction_id",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 22,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "password",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 23,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "payment_reason",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 24,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_footer",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 25,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_header",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 26,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_layout",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 27,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_number",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 28,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 29,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 30,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "serial_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 31,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "svc",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 32,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = true,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 33,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_location",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 34,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "trace_number",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 35,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_date",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 36,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_id",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 37,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tx_type",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 38,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "user_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 39,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/refundTransaction",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "refundTransaction",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "corporate_uuid",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "package_order_uuid",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "partner_id",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "partner_name",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "product_order_uuid",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "template_name",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 7,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/registerTecsCompany",
                                    ["parts"] = new List<object?>
                                    {
                                        "registerTecsCompany",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "additional_data",
                            ["req"] = false,
                            ["type"] = "`$OBJECT`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "corporate_uuid",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "package_order_uuid",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "product_order_uuid",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tecs_web_secret_key",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "template_name",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 7,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_country_code",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 8,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 9,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id_acq",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 10,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_language_code",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 11,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_location",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 12,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_serial_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 13,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "token_io_alia",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 14,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "token_io_iban",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 15,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "token_io_member_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 16,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "web_shop_url",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 17,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/registerTerminal",
                                    ["parts"] = new List<object?>
                                    {
                                        "registerTerminal",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "card_brand_report_data",
                            ["req"] = false,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_date_from",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_date_to",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "corporate_id",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "currency",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "sum_over_credit_tx",
                            ["req"] = false,
                            ["type"] = "`$OBJECT`",
                            ["index$"] = 7,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "sum_over_debit_tx",
                            ["req"] = false,
                            ["type"] = "`$OBJECT`",
                            ["index$"] = 8,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 9,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/digitalservices/reportData",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "digitalservices",
                                        "reportData",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "acquirer_name",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "acquirer_terminal_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "amount",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "application_cryptogram",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "authorization_code",
                            ["req"] = false,
                            ["type"] = new List<object?>
                            {
                                "`$ONE`",
                                new List<object?>
                                {
                                    "`$STRING`",
                                    "`$NULL`",
                                },
                            },
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "authorization_date",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_brand",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_entry",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 7,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_expiration",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 8,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 9,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_amount",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 10,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_batch_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 11,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_currency",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 12,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_date",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 13,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_processed_date",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 14,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_status",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 15,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "client_id",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 16,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "currency",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 17,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "cvm",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 18,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "ecr_data",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 19,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "emv_application_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 20,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "emv_application_label",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 21,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_name",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 22,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 23,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "original_client_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 24,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "original_terminal_id",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 25,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "original_transaction_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 26,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "payment_reason",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 27,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 28,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 29,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code_from_a",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 30,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 31,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "retrieval_reference_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 32,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "service_code",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 33,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "settlement_status",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 34,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "source_id",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 35,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tecsengine_response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 36,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tecsengine_response_text",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 37,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_end_of_day_date",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 38,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 39,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_location",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 40,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tip_amount",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 41,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "trace_number",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 42,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_clearing_date",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 43,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_date",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 44,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 45,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_seq_number",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 46,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_server_date",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 47,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_source",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 48,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_type",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 49,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/statusTransaction",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "statusTransaction",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "acq_tab_nexo",
                            ["req"] = false,
                            ["type"] = "`$OBJECT`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "config_version",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "serial_number",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tid_sent",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/storeTerminalParameters",
                                    ["parts"] = new List<object?>
                                    {
                                        "storeTerminalParameters",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "device_serial_number",
                            ["req"] = true,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "duplicate_terminal_id",
                            ["req"] = false,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal",
                            ["req"] = false,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 4,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/getTerminalId",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "getTerminalId",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "3_d_secure",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "authorization_code",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "card_brand",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_amount_from",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_amount_to",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_currency",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "clearing_status",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "corporate_uuid",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 7,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "order_by_transaction_date",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 8,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "pagination",
                            ["req"] = false,
                            ["type"] = "`$OBJECT`",
                            ["index$"] = 9,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "payment_token_public_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 10,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "receipt_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 11,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "referenced_transaction_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 12,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 13,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 14,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "retrieval_reference_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 15,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "source_id",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 16,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tecsengine_response_code_from",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 17,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "tecsengine_response_code_to",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 18,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "terminal_id",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 19,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "trace_number",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 20,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_amount_from",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 21,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_amount_to",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 22,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_date_from",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 23,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_date_to",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 24,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_history",
                            ["req"] = false,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 25,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_id",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 26,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_type",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 27,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "wallet",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 28,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/mcom/transactionHistory",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "mcom",
                                        "transactionHistory",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                                new Dictionary<string, object?>
                                {
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/transactionHistory",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "transactionHistory",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 1,
                                },
                            },
                            ["key$"] = "create",
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["transactions_count"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "period",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_date_from",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_date_to",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transactions_count",
                            ["req"] = false,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 5,
                        },
                    },
                    ["name"] = "transactions_count",
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/countAuthorisedTransactions",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "countAuthorisedTransactions",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                                new Dictionary<string, object?>
                                {
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/countNotAuthorisedTransactions",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "countNotAuthorisedTransactions",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 1,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "period",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_date_from",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_date_to",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transactions_count",
                            ["req"] = false,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 5,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/countTransactionsByCardBrand",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "countTransactionsByCardBrand",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "period",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_date_from",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "transaction_date_to",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "turnover",
                            ["req"] = false,
                            ["type"] = "`$ARRAY`",
                            ["index$"] = 5,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/transactionTurnover",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "transactionTurnover",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "city",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "corporate_uuid",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "country",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "merchant_category_code",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "name",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 4,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 5,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 6,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "state",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 7,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "street",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 8,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "vu_nummer",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 9,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "zipcode",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 10,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/updateMerchant",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "updateMerchant",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "response_code",
                            ["req"] = false,
                            ["type"] = "`$INTEGER`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "response_message",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "template_name",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "template_xml",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                            ["index$"] = 3,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "POST",
                                    ["orig"] = "/public/updateTemplateXml",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "updateTemplateXml",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "create",
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
                            ["active"] = true,
                            ["name"] = "app_name",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 0,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "build_date",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 1,
                        },
                        new Dictionary<string, object?>
                        {
                            ["active"] = true,
                            ["name"] = "version",
                            ["req"] = false,
                            ["type"] = "`$STRING`",
                            ["index$"] = 2,
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
                                    ["active"] = true,
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["method"] = "GET",
                                    ["orig"] = "/public/version",
                                    ["parts"] = new List<object?>
                                    {
                                        "public",
                                        "version",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["index$"] = 0,
                                },
                            },
                            ["key$"] = "load",
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

    public static Feature.BaseFeature MakeFeature(string name)
    {
        switch (name)
        {
            case "test":
                return new Feature.TestFeature();
            default:
                return new Feature.BaseFeature();
        }
    }
}
