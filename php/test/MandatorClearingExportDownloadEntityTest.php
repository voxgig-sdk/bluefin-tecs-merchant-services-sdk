<?php
declare(strict_types=1);

// MandatorClearingExportDownload entity test

require_once __DIR__ . '/../bluefintecsmerchantservices_sdk.php';
require_once __DIR__ . '/Runner.php';

use PHPUnit\Framework\TestCase;
use Voxgig\Struct\Struct as Vs;

class MandatorClearingExportDownloadEntityTest extends TestCase
{
    public function test_create_instance(): void
    {
        $testsdk = BluefinTecsMerchantServicesSDK::test(null, null);
        $ent = $testsdk->MandatorClearingExportDownload(null);
        $this->assertNotNull($ent);
    }

    public function test_basic_flow(): void
    {
        $setup = mandator_clearing_export_download_basic_setup(null);
        // Per-op sdk-test-control.json skip.
        $_live = !empty($setup["live"]);
        foreach (["create", "load"] as $_op) {
            [$_shouldSkip, $_reason] = Runner::is_control_skipped("entityOp", "mandator_clearing_export_download." . $_op, $_live ? "live" : "unit");
            if ($_shouldSkip) {
                $this->markTestSkipped($_reason ?? "skipped via sdk-test-control.json");
                return;
            }
        }
        // The basic flow consumes synthetic IDs from the fixture. In live mode
        // without an *_ENTID env override, those IDs hit the live API and 4xx.
        if (!empty($setup["synthetic_only"])) {
            $this->markTestSkipped("live entity test uses synthetic IDs from fixture — set BLUEFINTECSMERCHANTSERVICES_TEST_MANDATOR_CLEARING_EXPORT_DOWNLOAD_ENTID JSON to run live");
            return;
        }
        $client = $setup["client"];

        // CREATE
        $mandator_clearing_export_download_ref01_ent = $client->MandatorClearingExportDownload(null);
        $mandator_clearing_export_download_ref01_data = Helpers::to_map(Vs::getprop(
            Vs::getpath($setup["data"], "new.mandator_clearing_export_download"), "mandator_clearing_export_download_ref01"));

        $mandator_clearing_export_download_ref01_data_result = $mandator_clearing_export_download_ref01_ent->create($mandator_clearing_export_download_ref01_data, null);
        $mandator_clearing_export_download_ref01_data = Helpers::to_map($mandator_clearing_export_download_ref01_data_result);
        $this->assertNotNull($mandator_clearing_export_download_ref01_data);

        // LOAD
        $mandator_clearing_export_download_ref01_match_dt0 = [];
        $mandator_clearing_export_download_ref01_data_dt0_loaded = $mandator_clearing_export_download_ref01_ent->load($mandator_clearing_export_download_ref01_match_dt0, null);
        $this->assertNotNull($mandator_clearing_export_download_ref01_data_dt0_loaded);

    }
}

function mandator_clearing_export_download_basic_setup($extra)
{
    Runner::load_env_local();

    $entity_data_file = __DIR__ . '/../../.sdk/test/entity/mandator_clearing_export_download/MandatorClearingExportDownloadTestData.json';
    $entity_data_source = file_get_contents($entity_data_file);
    $entity_data = json_decode($entity_data_source, true);

    $options = [];
    $options["entity"] = $entity_data["existing"];

    $client = BluefinTecsMerchantServicesSDK::test($options, $extra);

    // Generate idmap.
    $idmap = [];
    foreach (["mandator_clearing_export_download01", "mandator_clearing_export_download02", "mandator_clearing_export_download03"] as $k) {
        $idmap[$k] = strtoupper($k);
    }

    // Detect ENTID env override before envOverride consumes it. When live
    // mode is on without a real override, the basic test runs against synthetic
    // IDs from the fixture and 4xx's. Surface this so the test can skip.
    $entid_env_raw = getenv("BLUEFINTECSMERCHANTSERVICES_TEST_MANDATOR_CLEARING_EXPORT_DOWNLOAD_ENTID");
    $idmap_overridden = $entid_env_raw !== false && str_starts_with(trim($entid_env_raw), "{");

    $env = Runner::env_override([
        "BLUEFINTECSMERCHANTSERVICES_TEST_MANDATOR_CLEARING_EXPORT_DOWNLOAD_ENTID" => $idmap,
        "BLUEFINTECSMERCHANTSERVICES_TEST_LIVE" => "FALSE",
        "BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN" => "FALSE",
        "BLUEFINTECSMERCHANTSERVICES_APIKEY" => "NONE",
    ]);

    $idmap_resolved = Helpers::to_map(
        $env["BLUEFINTECSMERCHANTSERVICES_TEST_MANDATOR_CLEARING_EXPORT_DOWNLOAD_ENTID"]);
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
