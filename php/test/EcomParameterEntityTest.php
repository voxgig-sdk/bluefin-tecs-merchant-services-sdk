<?php
declare(strict_types=1);

// EcomParameter entity test

require_once __DIR__ . '/../bluefintecsmerchantservices_sdk.php';
require_once __DIR__ . '/Runner.php';

use PHPUnit\Framework\TestCase;
use Voxgig\Struct\Struct as Vs;

class EcomParameterEntityTest extends TestCase
{
    public function test_create_instance(): void
    {
        $testsdk = BluefinTecsMerchantServicesSDK::test(null, null);
        $ent = $testsdk->EcomParameter(null);
        $this->assertNotNull($ent);
    }

    public function test_basic_flow(): void
    {
        $setup = ecom_parameter_basic_setup(null);
        // Per-op sdk-test-control.json skip.
        $_live = !empty($setup["live"]);
        foreach (["create"] as $_op) {
            [$_shouldSkip, $_reason] = Runner::is_control_skipped("entityOp", "ecom_parameter." . $_op, $_live ? "live" : "unit");
            if ($_shouldSkip) {
                $this->markTestSkipped($_reason ?? "skipped via sdk-test-control.json");
                return;
            }
        }
        // The basic flow consumes synthetic IDs from the fixture. In live mode
        // without an *_ENTID env override, those IDs hit the live API and 4xx.
        if (!empty($setup["synthetic_only"])) {
            $this->markTestSkipped("live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_ECOM_PARAMETER_ENTID JSON to run live");
            return;
        }
        $client = $setup["client"];

        // CREATE
        $ecom_parameter_ref01_ent = $client->EcomParameter(null);
        $ecom_parameter_ref01_data = Helpers::to_map(Vs::getprop(
            Vs::getpath($setup["data"], "new.ecom_parameter"), "ecom_parameter_ref01"));

        $ecom_parameter_ref01_data_result = $ecom_parameter_ref01_ent->create($ecom_parameter_ref01_data, null);
        $ecom_parameter_ref01_data = Helpers::to_map(is_object($ecom_parameter_ref01_data_result) && method_exists($ecom_parameter_ref01_data_result, 'data_get') ? $ecom_parameter_ref01_data_result->data_get() : $ecom_parameter_ref01_data_result);
        $this->assertNotNull($ecom_parameter_ref01_data);

    }
}

function ecom_parameter_basic_setup($extra)
{
    Runner::load_env_local();

    $entity_data_file = __DIR__ . '/../../.sdk/test/entity/ecom_parameter/EcomParameterTestData.json';
    $entity_data_source = file_get_contents($entity_data_file);
    $entity_data = json_decode($entity_data_source, true);

    $options = [];
    $options["entity"] = $entity_data["existing"];

    $client = BluefinTecsMerchantServicesSDK::test($options, $extra);

    // Generate idmap.
    $idmap = [];
    foreach (["ecom_parameter01", "ecom_parameter02", "ecom_parameter03"] as $k) {
        $idmap[$k] = strtoupper($k);
    }

    // Detect ENTID env override before envOverride consumes it. When live
    // mode is on without a real override, the basic test runs against synthetic
    // IDs from the fixture and 4xx's. Surface this so the test can skip.
    $entid_env_raw = getenv("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_ECOM_PARAMETER_ENTID");
    $idmap_overridden = $entid_env_raw !== false && str_starts_with(trim($entid_env_raw), "{");

    $env = Runner::env_override([
        "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_ECOM_PARAMETER_ENTID" => $idmap,
        "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE" => "FALSE",
        "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN" => "FALSE",
        "BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY" => "NONE",
    ]);

    $idmap_resolved = Helpers::to_map(
        $env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_ECOM_PARAMETER_ENTID"]);
    if ($idmap_resolved === null) {
        $idmap_resolved = Helpers::to_map($idmap);
    }

    if ($env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"] === "TRUE") {
        $merged_opts = Vs::merge([
            [
                "apikey" => $env["BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"],
            ],
            $extra ?? [],
        ]);
        $client = new BluefinTecsMerchantServicesSDK(Helpers::to_map($merged_opts));
    }

    $live = $env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"] === "TRUE";
    return [
        "client" => $client,
        "data" => $entity_data,
        "idmap" => $idmap_resolved,
        "env" => $env,
        "explain" => $env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN"] === "TRUE",
        "live" => $live,
        "synthetic_only" => $live && !$idmap_overridden,
        "now" => (int)(microtime(true) * 1000),
    ];
}
