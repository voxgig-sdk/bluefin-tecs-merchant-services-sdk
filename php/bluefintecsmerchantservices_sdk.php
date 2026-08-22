<?php
declare(strict_types=1);

// BluefinTecsMerchantServices SDK

require_once __DIR__ . '/utility/struct/Struct.php';
require_once __DIR__ . '/core/UtilityType.php';
require_once __DIR__ . '/core/Spec.php';
require_once __DIR__ . '/core/Helpers.php';

// Load utility registration
require_once __DIR__ . '/utility/Register.php';

// Load config and features
require_once __DIR__ . '/config.php';
require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/features.php';

use Voxgig\Struct\Struct;

// Features record diagnostic state on the client as dynamic properties
// (_retry, _cache, _metrics, ...); allow them explicitly (PHP 8.2+
// deprecates implicit dynamic properties).
#[\AllowDynamicProperties]
class BluefinTecsMerchantServicesSDK
{
    public string $mode;
    public array $features;
    public ?array $options;

    private $_utility;
    private $_rootctx;

    public function __construct(array $options = [])
    {
        $this->mode = "live";
        $this->features = [];
        $this->options = null;

        $utility = new BluefinTecsMerchantServicesUtility();
        $this->_utility = $utility;

        $config = BluefinTecsMerchantServicesConfig::shared_config();

        $this->_rootctx = ($utility->make_context)([
            "client" => $this,
            "utility" => $utility,
            "config" => $config,
            "options" => $options ?? [],
            "shared" => [],
        ], null);

        $this->options = ($utility->make_options)($this->_rootctx);

        if (Struct::getpath($this->options, "feature.test.active") === true) {
            $this->mode = "test";
        }

        $this->_rootctx->options = $this->options;

        // Feature INSTANCES supplied at construction (the station adopt
        // path) are read from the RAW construction options - extend is
        // consumed exactly once, here; make_options strips it from the
        // processed map so options_map() stays clean data.
        $extend_val = is_array($options["extend"] ?? null) ? $options["extend"] : [];

        // Add features in the resolved order (make_options puts an explicit
        // list order first, else defaults to test-first). Ordering matters: the
        // `test` feature installs the base mock transport and the transport
        // features (retry/cache/netsim/proxy/ratelimit) wrap whatever is
        // current, so `test` must be added before them to sit at the base.
        $feature_opts = BluefinTecsMerchantServicesHelpers::to_map(Struct::getprop($this->options, "feature"));
        if ($feature_opts) {
            $featureorder = Struct::getpath($this->options, "__derived__.featureorder");
            if (is_array($featureorder)) {
                foreach ($featureorder as $fname) {
                    $fopts = BluefinTecsMerchantServicesHelpers::to_map($feature_opts[$fname] ?? null);
                    if ($fopts && isset($fopts["active"]) && $fopts["active"] === true) {
                        // An active name with no generated feature class is
                        // legal when an extend-supplied instance carries that
                        // name (station's adopt path): the instance is added
                        // below, positioned by its own __after__ entry, so
                        // skip it here rather than add a BaseFeature stray
                        // that would silently shift feature positions.
                        if (!BluefinTecsMerchantServicesFeatures::has_feature($fname)) {
                            foreach ($extend_val as $ef) {
                                if (is_object($ef) && method_exists($ef, 'get_name')
                                    && $fname === $ef->get_name()) {
                                    continue 2;
                                }
                            }
                        }
                        ($utility->feature_add)($this->_rootctx, BluefinTecsMerchantServicesFeatures::make_feature($fname));
                    }
                }
            }
        }

        // Add extension features.
        foreach ($extend_val as $f) {
            if (is_object($f) && method_exists($f, 'get_name')) {
                ($utility->feature_add)($this->_rootctx, $f);
            }
        }

        // Initialize features.
        foreach ($this->features as $f) {
            ($utility->feature_init)($this->_rootctx, $f);
        }

        ($utility->feature_hook)($this->_rootctx, "PostConstruct");
    }

    public function options_map(): array
    {
        $out = Struct::clone($this->options);
        return is_array($out) ? $out : [];
    }

    public function get_utility()
    {
        return BluefinTecsMerchantServicesUtility::copy($this->_utility);
    }

    public function get_root_ctx()
    {
        return $this->_rootctx;
    }

    public function prepare(array $fetchargs = []): mixed
    {
        $utility = $this->_utility;
        $fetchargs = $fetchargs ?? [];

        $ctrl = BluefinTecsMerchantServicesHelpers::to_map(Struct::getprop($fetchargs, "ctrl")) ?? [];

        $ctx = ($utility->make_context)([
            "opname" => "prepare",
            "ctrl" => $ctrl,
        ], $this->_rootctx);

        $opts = $this->options;
        $path = Struct::getprop($fetchargs, "path") ?? "";
        $path = is_string($path) ? $path : "";
        $method_val = Struct::getprop($fetchargs, "method") ?? "GET";
        $method_val = is_string($method_val) ? $method_val : "GET";
        $params = BluefinTecsMerchantServicesHelpers::to_map(Struct::getprop($fetchargs, "params")) ?? [];
        $query = BluefinTecsMerchantServicesHelpers::to_map(Struct::getprop($fetchargs, "query")) ?? [];
        $headers = ($utility->prepare_headers)($ctx);

        $base = Struct::getprop($opts, "base") ?? "";
        $base = is_string($base) ? $base : "";
        $prefix = Struct::getprop($opts, "prefix") ?? "";
        $prefix = is_string($prefix) ? $prefix : "";
        $suffix = Struct::getprop($opts, "suffix") ?? "";
        $suffix = is_string($suffix) ? $suffix : "";

        $ctx->spec = new BluefinTecsMerchantServicesSpec([
            "base" => $base, "prefix" => $prefix, "suffix" => $suffix,
            "path" => $path, "method" => $method_val,
            "params" => $params, "query" => $query, "headers" => $headers,
            "body" => Struct::getprop($fetchargs, "body"),
            "step" => "start",
        ]);

        // Merge user-provided headers.
        $uh = Struct::getprop($fetchargs, "headers");
        if (is_array($uh)) {
            foreach ($uh as $k => $v) {
                $ctx->spec->headers[$k] = $v;
            }
        }

        [$_, $err] = ($utility->prepare_auth)($ctx);
        if ($err) {
            return ($utility->make_error)($ctx, $err);
        }

        [$fetchdef, $fd_err] = ($utility->make_fetch_def)($ctx);
        if ($fd_err) {
            return ($utility->make_error)($ctx, $fd_err);
        }
        return $fetchdef;
    }

    // Raw endpoint access is operator-controllable, like every entity op.
    // Blocking it means denying BOTH the 'direct' and 'graphql' tokens,
    // since either one reaches the same endpoint.
    public function direct(array $fetchargs = []): mixed
    {
        if (!$this->op_allowed("direct")) {
            return $this->op_denied("direct");
        }

        return $this->raw_request($fetchargs);
    }

    // Is this raw-access op permitted by the SDK's allow.op option?
    private function op_allowed(string $op): bool
    {
        $allow_op = Struct::getpath($this->options, "allow.op");
        return is_string($allow_op) && str_contains($allow_op, $op);
    }

    private function op_denied(string $op): array
    {
        $allow_op = Struct::getpath($this->options, "allow.op");
        return [
            "ok" => false,
            "err" => new BluefinTecsMerchantServicesError($op . "_allow",
                "BluefinTecsMerchantServicesSDK: " . $op . ": operation not allowed by" .
                " SDK option allow.op value: \"" . (string)$allow_op . "\""),
        ];
    }

    // Ungated request path shared by direct and graphql, each of which
    // checks its own allow.op token first. Private, rather than a flag on
    // fetchargs: a caller-supplied marker would let anyone opt straight back
    // out of the gate by passing it.
    private function raw_request(array $fetchargs = []): mixed
    {
        $utility = $this->_utility;

        // direct() is the raw-HTTP escape hatch: it never throws, it returns
        // an {ok, err, ...} dict. prepare() now raises on error, so catch it
        // and surface the failure through the dict instead.
        try {
            $fetchdef = $this->prepare($fetchargs);
        } catch (\Throwable $err) {
            return ["ok" => false, "err" => $err];
        }

        $fetchargs = $fetchargs ?? [];
        $ctrl = BluefinTecsMerchantServicesHelpers::to_map(Struct::getprop($fetchargs, "ctrl")) ?? [];

        $ctx = ($utility->make_context)([
            "opname" => "direct",
            "ctrl" => $ctrl,
        ], $this->_rootctx);

        $url = $fetchdef["url"] ?? "";
        [$fetched, $fetch_err] = ($utility->fetcher)($ctx, $url, $fetchdef);

        if ($fetch_err) {
            return ["ok" => false, "err" => $fetch_err];
        }

        if ($fetched === null) {
            return [
                "ok" => false,
                "err" => $ctx->make_error("direct_no_response", "response: undefined"),
            ];
        }

        if (is_array($fetched)) {
            $status = BluefinTecsMerchantServicesHelpers::to_int(Struct::getprop($fetched, "status"));
            $headers = Struct::getprop($fetched, "headers") ?? [];

            // No-body responses (204, 304) and explicit zero content-length
            // must skip JSON parsing — calling json() on an empty body errors.
            $content_length = is_array($headers) ? ($headers["content-length"] ?? null) : null;
            $no_body = $status === 204 || $status === 304 || (string)$content_length === "0";

            $json_data = null;
            if (!$no_body) {
                $jf = Struct::getprop($fetched, "json");
                if (is_callable($jf)) {
                    try {
                        $json_data = $jf();
                    } catch (\Throwable $e) {
                        // Non-JSON body — leave data null but keep status/ok.
                        $json_data = null;
                    }
                }
            }

            return [
                "ok" => $status >= 200 && $status < 300,
                "status" => $status,
                "headers" => Struct::getprop($fetched, "headers"),
                "data" => $json_data,
            ];
        }

        return [
            "ok" => false,
            "err" => $ctx->make_error("direct_invalid", "invalid response type"),
        ];
    }

    // Raw GraphQL access: the pressure valve that makes the generated
    // surface's deliberate omissions (per-call selection sets, typed filter
    // builders, batching, subscriptions) livable — the whole schema stays
    // reachable.
    //
    // Thin wrapper over the same prepare/fetch path direct uses, with the
    // one thing raw direct cannot do for GraphQL: a GraphQL failure rides
    // HTTP 200 as a top-level `errors` array, so status alone would report
    // a failed query as ok.
    //
    // NOTE: like direct, this bypasses the feature pipeline — no retry,
    // ratelimit or paging features apply.
    public function graphql(string $query, ?array $variables = null, ?array $ctrl = null): mixed
    {
        if (!$this->op_allowed("graphql")) {
            return $this->op_denied("graphql");
        }

        $res = $this->raw_request([
            "method" => "POST",
            "headers" => ["content-type" => "application/json"],
            "body" => ["query" => $query, "variables" => $variables ?? []],
            "ctrl" => $ctrl ?? [],
        ]);

        if (!is_array($res)) {
            return $res;
        }

        // Errors are read BEFORE any status check: a GraphQL parse or
        // validation failure comes back as HTTP 400 carrying the standard
        // { errors: [...] } body, and the raw path represents a non-2xx as
        // ok:false with no err — so returning early on status would discard
        // the server's own diagnostics, which are the only useful part of
        // that response.
        $errors = Struct::getpath($res, "data.errors");

        if (is_array($errors) && 0 < count($errors)) {
            $first = is_array($errors[0]) ? $errors[0] : [];
            $msg = $first["message"] ?? "";
            if (!is_string($msg) || "" === $msg) {
                $msg = "graphql error";
            }
            $res["ok"] = false;
            $res["err"] = new BluefinTecsMerchantServicesError("graphql_error",
                "BluefinTecsMerchantServicesSDK: graphql: " . $msg);
            $res["graphql"] = $errors;
        }

        return $res;
    }


    private $_cancel_transaction = null;

    // Canonical facade: $client->CancelTransaction()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->cancel_transaction()
    // resolves here too.
    public function CancelTransaction($data = null)
    {
        require_once __DIR__ . '/entity/cancel_transaction_entity.php';
        if ($data === null) {
            if ($this->_cancel_transaction === null) {
                $this->_cancel_transaction = new CancelTransactionEntity($this, null);
            }
            return $this->_cancel_transaction;
        }
        return new CancelTransactionEntity($this, $data);
    }


    private $_check_card_black_listed = null;

    // Canonical facade: $client->CheckCardBlackListed()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->check_card_black_listed()
    // resolves here too.
    public function CheckCardBlackListed($data = null)
    {
        require_once __DIR__ . '/entity/check_card_black_listed_entity.php';
        if ($data === null) {
            if ($this->_check_card_black_listed === null) {
                $this->_check_card_black_listed = new CheckCardBlackListedEntity($this, null);
            }
            return $this->_check_card_black_listed;
        }
        return new CheckCardBlackListedEntity($this, $data);
    }


    private $_create_product = null;

    // Canonical facade: $client->CreateProduct()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->create_product()
    // resolves here too.
    public function CreateProduct($data = null)
    {
        require_once __DIR__ . '/entity/create_product_entity.php';
        if ($data === null) {
            if ($this->_create_product === null) {
                $this->_create_product = new CreateProductEntity($this, null);
            }
            return $this->_create_product;
        }
        return new CreateProductEntity($this, $data);
    }


    private $_deactivate_terminal = null;

    // Canonical facade: $client->DeactivateTerminal()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->deactivate_terminal()
    // resolves here too.
    public function DeactivateTerminal($data = null)
    {
        require_once __DIR__ . '/entity/deactivate_terminal_entity.php';
        if ($data === null) {
            if ($this->_deactivate_terminal === null) {
                $this->_deactivate_terminal = new DeactivateTerminalEntity($this, null);
            }
            return $this->_deactivate_terminal;
        }
        return new DeactivateTerminalEntity($this, $data);
    }


    private $_digital_services_api = null;

    // Canonical facade: $client->DigitalServicesApi()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->digital_services_api()
    // resolves here too.
    public function DigitalServicesApi($data = null)
    {
        require_once __DIR__ . '/entity/digital_services_api_entity.php';
        if ($data === null) {
            if ($this->_digital_services_api === null) {
                $this->_digital_services_api = new DigitalServicesApiEntity($this, null);
            }
            return $this->_digital_services_api;
        }
        return new DigitalServicesApiEntity($this, $data);
    }


    private $_ec_data_ecom = null;

    // Canonical facade: $client->EcDataEcom()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->ec_data_ecom()
    // resolves here too.
    public function EcDataEcom($data = null)
    {
        require_once __DIR__ . '/entity/ec_data_ecom_entity.php';
        if ($data === null) {
            if ($this->_ec_data_ecom === null) {
                $this->_ec_data_ecom = new EcDataEcomEntity($this, null);
            }
            return $this->_ec_data_ecom;
        }
        return new EcDataEcomEntity($this, $data);
    }


    private $_ecom_parameter = null;

    // Canonical facade: $client->EcomParameter()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->ecom_parameter()
    // resolves here too.
    public function EcomParameter($data = null)
    {
        require_once __DIR__ . '/entity/ecom_parameter_entity.php';
        if ($data === null) {
            if ($this->_ecom_parameter === null) {
                $this->_ecom_parameter = new EcomParameterEntity($this, null);
            }
            return $this->_ecom_parameter;
        }
        return new EcomParameterEntity($this, $data);
    }


    private $_ecr_data = null;

    // Canonical facade: $client->EcrData()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->ecr_data()
    // resolves here too.
    public function EcrData($data = null)
    {
        require_once __DIR__ . '/entity/ecr_data_entity.php';
        if ($data === null) {
            if ($this->_ecr_data === null) {
                $this->_ecr_data = new EcrDataEntity($this, null);
            }
            return $this->_ecr_data;
        }
        return new EcrDataEntity($this, $data);
    }


    private $_emv_data = null;

    // Canonical facade: $client->EmvData()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->emv_data()
    // resolves here too.
    public function EmvData($data = null)
    {
        require_once __DIR__ . '/entity/emv_data_entity.php';
        if ($data === null) {
            if ($this->_emv_data === null) {
                $this->_emv_data = new EmvDataEntity($this, null);
            }
            return $this->_emv_data;
        }
        return new EmvDataEntity($this, $data);
    }


    private $_enable_acquiring = null;

    // Canonical facade: $client->EnableAcquiring()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->enable_acquiring()
    // resolves here too.
    public function EnableAcquiring($data = null)
    {
        require_once __DIR__ . '/entity/enable_acquiring_entity.php';
        if ($data === null) {
            if ($this->_enable_acquiring === null) {
                $this->_enable_acquiring = new EnableAcquiringEntity($this, null);
            }
            return $this->_enable_acquiring;
        }
        return new EnableAcquiringEntity($this, $data);
    }


    private $_get_merchant_contract_number = null;

    // Canonical facade: $client->GetMerchantContractNumber()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->get_merchant_contract_number()
    // resolves here too.
    public function GetMerchantContractNumber($data = null)
    {
        require_once __DIR__ . '/entity/get_merchant_contract_number_entity.php';
        if ($data === null) {
            if ($this->_get_merchant_contract_number === null) {
                $this->_get_merchant_contract_number = new GetMerchantContractNumberEntity($this, null);
            }
            return $this->_get_merchant_contract_number;
        }
        return new GetMerchantContractNumberEntity($this, $data);
    }


    private $_get_template_xml = null;

    // Canonical facade: $client->GetTemplateXml()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->get_template_xml()
    // resolves here too.
    public function GetTemplateXml($data = null)
    {
        require_once __DIR__ . '/entity/get_template_xml_entity.php';
        if ($data === null) {
            if ($this->_get_template_xml === null) {
                $this->_get_template_xml = new GetTemplateXmlEntity($this, null);
            }
            return $this->_get_template_xml;
        }
        return new GetTemplateXmlEntity($this, $data);
    }


    private $_introduce_mandator = null;

    // Canonical facade: $client->IntroduceMandator()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->introduce_mandator()
    // resolves here too.
    public function IntroduceMandator($data = null)
    {
        require_once __DIR__ . '/entity/introduce_mandator_entity.php';
        if ($data === null) {
            if ($this->_introduce_mandator === null) {
                $this->_introduce_mandator = new IntroduceMandatorEntity($this, null);
            }
            return $this->_introduce_mandator;
        }
        return new IntroduceMandatorEntity($this, $data);
    }


    private $_introduce_package = null;

    // Canonical facade: $client->IntroducePackage()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->introduce_package()
    // resolves here too.
    public function IntroducePackage($data = null)
    {
        require_once __DIR__ . '/entity/introduce_package_entity.php';
        if ($data === null) {
            if ($this->_introduce_package === null) {
                $this->_introduce_package = new IntroducePackageEntity($this, null);
            }
            return $this->_introduce_package;
        }
        return new IntroducePackageEntity($this, $data);
    }


    private $_keep_alive = null;

    // Canonical facade: $client->KeepAlive()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->keep_alive()
    // resolves here too.
    public function KeepAlive($data = null)
    {
        require_once __DIR__ . '/entity/keep_alive_entity.php';
        if ($data === null) {
            if ($this->_keep_alive === null) {
                $this->_keep_alive = new KeepAliveEntity($this, null);
            }
            return $this->_keep_alive;
        }
        return new KeepAliveEntity($this, $data);
    }


    private $_list_terminal = null;

    // Canonical facade: $client->ListTerminal()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->list_terminal()
    // resolves here too.
    public function ListTerminal($data = null)
    {
        require_once __DIR__ . '/entity/list_terminal_entity.php';
        if ($data === null) {
            if ($this->_list_terminal === null) {
                $this->_list_terminal = new ListTerminalEntity($this, null);
            }
            return $this->_list_terminal;
        }
        return new ListTerminalEntity($this, $data);
    }


    private $_mandator_clearing_export = null;

    // Canonical facade: $client->MandatorClearingExport()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->mandator_clearing_export()
    // resolves here too.
    public function MandatorClearingExport($data = null)
    {
        require_once __DIR__ . '/entity/mandator_clearing_export_entity.php';
        if ($data === null) {
            if ($this->_mandator_clearing_export === null) {
                $this->_mandator_clearing_export = new MandatorClearingExportEntity($this, null);
            }
            return $this->_mandator_clearing_export;
        }
        return new MandatorClearingExportEntity($this, $data);
    }


    private $_mandator_clearing_export_download = null;

    // Canonical facade: $client->MandatorClearingExportDownload()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->mandator_clearing_export_download()
    // resolves here too.
    public function MandatorClearingExportDownload($data = null)
    {
        require_once __DIR__ . '/entity/mandator_clearing_export_download_entity.php';
        if ($data === null) {
            if ($this->_mandator_clearing_export_download === null) {
                $this->_mandator_clearing_export_download = new MandatorClearingExportDownloadEntity($this, null);
            }
            return $this->_mandator_clearing_export_download;
        }
        return new MandatorClearingExportDownloadEntity($this, $data);
    }


    private $_mandator_clearing_export_summary = null;

    // Canonical facade: $client->MandatorClearingExportSummary()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->mandator_clearing_export_summary()
    // resolves here too.
    public function MandatorClearingExportSummary($data = null)
    {
        require_once __DIR__ . '/entity/mandator_clearing_export_summary_entity.php';
        if ($data === null) {
            if ($this->_mandator_clearing_export_summary === null) {
                $this->_mandator_clearing_export_summary = new MandatorClearingExportSummaryEntity($this, null);
            }
            return $this->_mandator_clearing_export_summary;
        }
        return new MandatorClearingExportSummaryEntity($this, $data);
    }


    private $_merchant_portal_services_api = null;

    // Canonical facade: $client->MerchantPortalServicesApi()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->merchant_portal_services_api()
    // resolves here too.
    public function MerchantPortalServicesApi($data = null)
    {
        require_once __DIR__ . '/entity/merchant_portal_services_api_entity.php';
        if ($data === null) {
            if ($this->_merchant_portal_services_api === null) {
                $this->_merchant_portal_services_api = new MerchantPortalServicesApiEntity($this, null);
            }
            return $this->_merchant_portal_services_api;
        }
        return new MerchantPortalServicesApiEntity($this, $data);
    }


    private $_move_tid = null;

    // Canonical facade: $client->MoveTid()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->move_tid()
    // resolves here too.
    public function MoveTid($data = null)
    {
        require_once __DIR__ . '/entity/move_tid_entity.php';
        if ($data === null) {
            if ($this->_move_tid === null) {
                $this->_move_tid = new MoveTidEntity($this, null);
            }
            return $this->_move_tid;
        }
        return new MoveTidEntity($this, $data);
    }


    private $_payment_manual = null;

    // Canonical facade: $client->PaymentManual()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->payment_manual()
    // resolves here too.
    public function PaymentManual($data = null)
    {
        require_once __DIR__ . '/entity/payment_manual_entity.php';
        if ($data === null) {
            if ($this->_payment_manual === null) {
                $this->_payment_manual = new PaymentManualEntity($this, null);
            }
            return $this->_payment_manual;
        }
        return new PaymentManualEntity($this, $data);
    }


    private $_payment_sred = null;

    // Canonical facade: $client->PaymentSred()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->payment_sred()
    // resolves here too.
    public function PaymentSred($data = null)
    {
        require_once __DIR__ . '/entity/payment_sred_entity.php';
        if ($data === null) {
            if ($this->_payment_sred === null) {
                $this->_payment_sred = new PaymentSredEntity($this, null);
            }
            return $this->_payment_sred;
        }
        return new PaymentSredEntity($this, $data);
    }


    private $_pre_auth_transaction_completion = null;

    // Canonical facade: $client->PreAuthTransactionCompletion()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->pre_auth_transaction_completion()
    // resolves here too.
    public function PreAuthTransactionCompletion($data = null)
    {
        require_once __DIR__ . '/entity/pre_auth_transaction_completion_entity.php';
        if ($data === null) {
            if ($this->_pre_auth_transaction_completion === null) {
                $this->_pre_auth_transaction_completion = new PreAuthTransactionCompletionEntity($this, null);
            }
            return $this->_pre_auth_transaction_completion;
        }
        return new PreAuthTransactionCompletionEntity($this, $data);
    }


    private $_reactivate_terminal = null;

    // Canonical facade: $client->ReactivateTerminal()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->reactivate_terminal()
    // resolves here too.
    public function ReactivateTerminal($data = null)
    {
        require_once __DIR__ . '/entity/reactivate_terminal_entity.php';
        if ($data === null) {
            if ($this->_reactivate_terminal === null) {
                $this->_reactivate_terminal = new ReactivateTerminalEntity($this, null);
            }
            return $this->_reactivate_terminal;
        }
        return new ReactivateTerminalEntity($this, $data);
    }


    private $_refund_transaction = null;

    // Canonical facade: $client->RefundTransaction()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->refund_transaction()
    // resolves here too.
    public function RefundTransaction($data = null)
    {
        require_once __DIR__ . '/entity/refund_transaction_entity.php';
        if ($data === null) {
            if ($this->_refund_transaction === null) {
                $this->_refund_transaction = new RefundTransactionEntity($this, null);
            }
            return $this->_refund_transaction;
        }
        return new RefundTransactionEntity($this, $data);
    }


    private $_register_tecs_company = null;

    // Canonical facade: $client->RegisterTecsCompany()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->register_tecs_company()
    // resolves here too.
    public function RegisterTecsCompany($data = null)
    {
        require_once __DIR__ . '/entity/register_tecs_company_entity.php';
        if ($data === null) {
            if ($this->_register_tecs_company === null) {
                $this->_register_tecs_company = new RegisterTecsCompanyEntity($this, null);
            }
            return $this->_register_tecs_company;
        }
        return new RegisterTecsCompanyEntity($this, $data);
    }


    private $_register_terminal = null;

    // Canonical facade: $client->RegisterTerminal()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->register_terminal()
    // resolves here too.
    public function RegisterTerminal($data = null)
    {
        require_once __DIR__ . '/entity/register_terminal_entity.php';
        if ($data === null) {
            if ($this->_register_terminal === null) {
                $this->_register_terminal = new RegisterTerminalEntity($this, null);
            }
            return $this->_register_terminal;
        }
        return new RegisterTerminalEntity($this, $data);
    }


    private $_report_data = null;

    // Canonical facade: $client->ReportData()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->report_data()
    // resolves here too.
    public function ReportData($data = null)
    {
        require_once __DIR__ . '/entity/report_data_entity.php';
        if ($data === null) {
            if ($this->_report_data === null) {
                $this->_report_data = new ReportDataEntity($this, null);
            }
            return $this->_report_data;
        }
        return new ReportDataEntity($this, $data);
    }


    private $_status_transaction = null;

    // Canonical facade: $client->StatusTransaction()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->status_transaction()
    // resolves here too.
    public function StatusTransaction($data = null)
    {
        require_once __DIR__ . '/entity/status_transaction_entity.php';
        if ($data === null) {
            if ($this->_status_transaction === null) {
                $this->_status_transaction = new StatusTransactionEntity($this, null);
            }
            return $this->_status_transaction;
        }
        return new StatusTransactionEntity($this, $data);
    }


    private $_store_terminal_parameter = null;

    // Canonical facade: $client->StoreTerminalParameter()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->store_terminal_parameter()
    // resolves here too.
    public function StoreTerminalParameter($data = null)
    {
        require_once __DIR__ . '/entity/store_terminal_parameter_entity.php';
        if ($data === null) {
            if ($this->_store_terminal_parameter === null) {
                $this->_store_terminal_parameter = new StoreTerminalParameterEntity($this, null);
            }
            return $this->_store_terminal_parameter;
        }
        return new StoreTerminalParameterEntity($this, $data);
    }


    private $_terminal_id = null;

    // Canonical facade: $client->TerminalId()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->terminal_id()
    // resolves here too.
    public function TerminalId($data = null)
    {
        require_once __DIR__ . '/entity/terminal_id_entity.php';
        if ($data === null) {
            if ($this->_terminal_id === null) {
                $this->_terminal_id = new TerminalIdEntity($this, null);
            }
            return $this->_terminal_id;
        }
        return new TerminalIdEntity($this, $data);
    }


    private $_transaction_history = null;

    // Canonical facade: $client->TransactionHistory()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->transaction_history()
    // resolves here too.
    public function TransactionHistory($data = null)
    {
        require_once __DIR__ . '/entity/transaction_history_entity.php';
        if ($data === null) {
            if ($this->_transaction_history === null) {
                $this->_transaction_history = new TransactionHistoryEntity($this, null);
            }
            return $this->_transaction_history;
        }
        return new TransactionHistoryEntity($this, $data);
    }


    private $_transactions_count = null;

    // Canonical facade: $client->TransactionsCount()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->transactions_count()
    // resolves here too.
    public function TransactionsCount($data = null)
    {
        require_once __DIR__ . '/entity/transactions_count_entity.php';
        if ($data === null) {
            if ($this->_transactions_count === null) {
                $this->_transactions_count = new TransactionsCountEntity($this, null);
            }
            return $this->_transactions_count;
        }
        return new TransactionsCountEntity($this, $data);
    }


    private $_transactions_count_card_brand = null;

    // Canonical facade: $client->TransactionsCountCardBrand()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->transactions_count_card_brand()
    // resolves here too.
    public function TransactionsCountCardBrand($data = null)
    {
        require_once __DIR__ . '/entity/transactions_count_card_brand_entity.php';
        if ($data === null) {
            if ($this->_transactions_count_card_brand === null) {
                $this->_transactions_count_card_brand = new TransactionsCountCardBrandEntity($this, null);
            }
            return $this->_transactions_count_card_brand;
        }
        return new TransactionsCountCardBrandEntity($this, $data);
    }


    private $_transactions_turnover = null;

    // Canonical facade: $client->TransactionsTurnover()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->transactions_turnover()
    // resolves here too.
    public function TransactionsTurnover($data = null)
    {
        require_once __DIR__ . '/entity/transactions_turnover_entity.php';
        if ($data === null) {
            if ($this->_transactions_turnover === null) {
                $this->_transactions_turnover = new TransactionsTurnoverEntity($this, null);
            }
            return $this->_transactions_turnover;
        }
        return new TransactionsTurnoverEntity($this, $data);
    }


    private $_update_merchant = null;

    // Canonical facade: $client->UpdateMerchant()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->update_merchant()
    // resolves here too.
    public function UpdateMerchant($data = null)
    {
        require_once __DIR__ . '/entity/update_merchant_entity.php';
        if ($data === null) {
            if ($this->_update_merchant === null) {
                $this->_update_merchant = new UpdateMerchantEntity($this, null);
            }
            return $this->_update_merchant;
        }
        return new UpdateMerchantEntity($this, $data);
    }


    private $_update_template_xml = null;

    // Canonical facade: $client->UpdateTemplateXml()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->update_template_xml()
    // resolves here too.
    public function UpdateTemplateXml($data = null)
    {
        require_once __DIR__ . '/entity/update_template_xml_entity.php';
        if ($data === null) {
            if ($this->_update_template_xml === null) {
                $this->_update_template_xml = new UpdateTemplateXmlEntity($this, null);
            }
            return $this->_update_template_xml;
        }
        return new UpdateTemplateXmlEntity($this, $data);
    }


    private $_version = null;

    // Canonical facade: $client->Version()->list() / ->load(["id" => ...]).
    // PHP method names are case-insensitive, so lowercase $client->version()
    // resolves here too.
    public function Version($data = null)
    {
        require_once __DIR__ . '/entity/version_entity.php';
        if ($data === null) {
            if ($this->_version === null) {
                $this->_version = new VersionEntity($this, null);
            }
            return $this->_version;
        }
        return new VersionEntity($this, $data);
    }



    public static function test(?array $testopts = null, ?array $sdkopts = null): self
    {
        $sdkopts = $sdkopts ?? [];
        $sdkopts = Struct::clone($sdkopts);
        $sdkopts = is_array($sdkopts) ? $sdkopts : [];

        $testopts = $testopts ?? [];
        $testopts = Struct::clone($testopts);
        $testopts = is_array($testopts) ? $testopts : [];
        $testopts["active"] = true;

        if (!isset($sdkopts["feature"])) {
            $sdkopts["feature"] = [];
        }
        $sdkopts["feature"]["test"] = $testopts;

        $sdk = new BluefinTecsMerchantServicesSDK($sdkopts);
        $sdk->mode = "test";
        return $sdk;
    }
}
