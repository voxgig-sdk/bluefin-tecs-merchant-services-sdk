<?php
declare(strict_types=1);

// EcDataEcom entity test

require_once __DIR__ . '/../bluefintecsmerchantservices_sdk.php';
require_once __DIR__ . '/Runner.php';

use PHPUnit\Framework\TestCase;
use Voxgig\Struct\Struct as Vs;

class EcDataEcomEntityTest extends TestCase
{
    public function test_create_instance(): void
    {
        $testsdk = BluefinTecsMerchantServicesSDK::test(null, null);
        $ent = $testsdk->EcDataEcom(null);
        $this->assertNotNull($ent);
    }

    public function test_basic_flow(): void
    {
        $setup = ec_data_ecom_basic_setup(null);
        // Per-op sdk-test-control.json skip.
        $_live = !empty($setup["live"]);
        foreach (["create"] as $_op) {
            [$_shouldSkip, $_reason] = Runner::is_control_skipped("entityOp", "ec_data_ecom." . $_op, $_live ? "live" : "unit");
            if ($_shouldSkip) {
                $this->markTestSkipped($_reason ?? "skipped via sdk-test-control.json");
                return;
            }
        }
        // The basic flow consumes synthetic IDs from the fixture. In live mode
        // without an *_ENTID env override, those IDs hit the live API and 4xx.
        if (!empty($setup["synthetic_only"])) {
            $this->markTestSkipped("live entity test uses synthetic IDs from fixture — set BLUEFINTECSMERCHANTSERVICES_TEST_EC_DATA_ECOM_ENTID JSON to run live");
            return;
        }
        $client = $setup["client"];

        // CREATE
        $ec_data_ecom_ref01_ent = $client->EcDataEcom(null);
        $ec_data_ecom_ref01_data = Helpers::to_map(Vs::getprop(
            Vs::getpath($setup["data"], "new.ec_data_ecom"), "ec_data_ecom_ref01"));

        $ec_data_ecom_ref01_data_result = $ec_data_ecom_ref01_ent->create($ec_data_ecom_ref01_data, null);
        $ec_data_ecom_ref01_data = Helpers::to_map($ec_data_ecom_ref01_data_result);
        $this->assertNotNull($ec_data_ecom_ref01_data);

    }
}

function ec_data_ecom_basic_setup($extra)
{
    Runner::load_env_local();

    $entity_data_file = __DIR__ . '/../../.sdk/test/entity/ec_data_ecom/EcDataEcomTestData.json';
    $entity_data_source = file_get_contents($entity_data_file);
    $entity_data = json_decode($entity_data_source, true);

    $options = [];
    $options["entity"] = $entity_data["existing"];

    $client = BluefinTecsMerchantServicesSDK::test($options, $extra);

    // Generate idmap.
    $idmap = [];
    foreach (["ec_data_ecom01", "ec_data_ecom02", "ec_data_ecom03"] as $k) {
        $idmap[$k] = strtoupper($k);
    }

    // Detect ENTID env override before envOverride consumes it. When live
    // mode is on without a real override, the basic test runs against synthetic
    // IDs from the fixture and 4xx's. Surface this so the test can skip.
    $entid_env_raw = getenv("BLUEFINTECSMERCHANTSERVICES_TEST_EC_DATA_ECOM_ENTID");
    $idmap_overridden = $entid_env_raw !== false && str_starts_with(trim($entid_env_raw), "{");

    $env = Runner::env_override([
        "BLUEFINTECSMERCHANTSERVICES_TEST_EC_DATA_ECOM_ENTID" => $idmap,
        "BLUEFINTECSMERCHANTSERVICES_TEST_LIVE" => "FALSE",
        "BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN" => "FALSE",
        "BLUEFINTECSMERCHANTSERVICES_APIKEY" => "NONE",
    ]);

    $idmap_resolved = Helpers::to_map(
        $env["BLUEFINTECSMERCHANTSERVICES_TEST_EC_DATA_ECOM_ENTID"]);
    if ($idmap_resolved === null) {
        $idmap_resolved = Helpers::to_map($idmap);
    }

    if ($env["BLUEFINTECSMERCHANTSERVICES_TEST_LIVE"] === "TRUE") {
        $merged_opts = Vs::merge([
            [
                "apikey" => $env["BLUEFINTECSMERCHANTSERVICES_APIKEY"],
            ],
            $extra ?? [],
        ]);
        $client = new BluefinTecsMerchantServicesSDK(Helpers::to_map($merged_opts));
    }

    $live = $env["BLUEFINTECSMERCHANTSERVICES_TEST_LIVE"] === "TRUE";
    return [
        "client" => $client,
        "data" => $entity_data,
        "idmap" => $idmap_resolved,
        "env" => $env,
        "explain" => $env["BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN"] === "TRUE",
        "live" => $live,
        "synthetic_only" => $live && !$idmap_overridden,
        "now" => (int)(microtime(true) * 1000),
    ];
}
