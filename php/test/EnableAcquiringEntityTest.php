<?php
declare(strict_types=1);

// EnableAcquiring entity test

require_once __DIR__ . '/../bluefintecsmerchantservices_sdk.php';
require_once __DIR__ . '/Runner.php';

use PHPUnit\Framework\TestCase;
use Voxgig\Struct\Struct as Vs;

class EnableAcquiringEntityTest extends TestCase
{
    public function test_create_instance(): void
    {
        $testsdk = BluefinTecsMerchantServicesSDK::test(null, null);
        $ent = $testsdk->EnableAcquiring(null);
        $this->assertNotNull($ent);
    }

    public function test_basic_flow(): void
    {
        $setup = enable_acquiring_basic_setup(null);
        // Per-op sdk-test-control.json skip.
        $_live = !empty($setup["live"]);
        foreach (["create"] as $_op) {
            [$_shouldSkip, $_reason] = Runner::is_control_skipped("entityOp", "enable_acquiring." . $_op, $_live ? "live" : "unit");
            if ($_shouldSkip) {
                $this->markTestSkipped($_reason ?? "skipped via sdk-test-control.json");
                return;
            }
        }
        // The basic flow consumes synthetic IDs from the fixture. In live mode
        // without an *_ENTID env override, those IDs hit the live API and 4xx.
        if (!empty($setup["synthetic_only"])) {
            $this->markTestSkipped("live entity test uses synthetic IDs from fixture — set BLUEFINTECSMERCHANTSERVICES_TEST_ENABLE_ACQUIRING_ENTID JSON to run live");
            return;
        }
        $client = $setup["client"];

        // CREATE
        $enable_acquiring_ref01_ent = $client->EnableAcquiring(null);
        $enable_acquiring_ref01_data = Helpers::to_map(Vs::getprop(
            Vs::getpath($setup["data"], "new.enable_acquiring"), "enable_acquiring_ref01"));

        $enable_acquiring_ref01_data_result = $enable_acquiring_ref01_ent->create($enable_acquiring_ref01_data, null);
        $enable_acquiring_ref01_data = Helpers::to_map($enable_acquiring_ref01_data_result);
        $this->assertNotNull($enable_acquiring_ref01_data);

    }
}

function enable_acquiring_basic_setup($extra)
{
    Runner::load_env_local();

    $entity_data_file = __DIR__ . '/../../.sdk/test/entity/enable_acquiring/EnableAcquiringTestData.json';
    $entity_data_source = file_get_contents($entity_data_file);
    $entity_data = json_decode($entity_data_source, true);

    $options = [];
    $options["entity"] = $entity_data["existing"];

    $client = BluefinTecsMerchantServicesSDK::test($options, $extra);

    // Generate idmap.
    $idmap = [];
    foreach (["enable_acquiring01", "enable_acquiring02", "enable_acquiring03"] as $k) {
        $idmap[$k] = strtoupper($k);
    }

    // Detect ENTID env override before envOverride consumes it. When live
    // mode is on without a real override, the basic test runs against synthetic
    // IDs from the fixture and 4xx's. Surface this so the test can skip.
    $entid_env_raw = getenv("BLUEFINTECSMERCHANTSERVICES_TEST_ENABLE_ACQUIRING_ENTID");
    $idmap_overridden = $entid_env_raw !== false && str_starts_with(trim($entid_env_raw), "{");

    $env = Runner::env_override([
        "BLUEFINTECSMERCHANTSERVICES_TEST_ENABLE_ACQUIRING_ENTID" => $idmap,
        "BLUEFINTECSMERCHANTSERVICES_TEST_LIVE" => "FALSE",
        "BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN" => "FALSE",
        "BLUEFINTECSMERCHANTSERVICES_APIKEY" => "NONE",
    ]);

    $idmap_resolved = Helpers::to_map(
        $env["BLUEFINTECSMERCHANTSERVICES_TEST_ENABLE_ACQUIRING_ENTID"]);
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
