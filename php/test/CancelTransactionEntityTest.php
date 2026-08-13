<?php
declare(strict_types=1);

// CancelTransaction entity test

require_once __DIR__ . '/../bluefintecsmerchantservices_sdk.php';
require_once __DIR__ . '/Runner.php';

use PHPUnit\Framework\TestCase;
use Voxgig\Struct\Struct as Vs;

class CancelTransactionEntityTest extends TestCase
{
    public function test_create_instance(): void
    {
        $testsdk = BluefinTecsMerchantServicesSDK::test(null, null);
        $ent = $testsdk->CancelTransaction(null);
        $this->assertNotNull($ent);
    }

    public function test_basic_flow(): void
    {
        $setup = cancel_transaction_basic_setup(null);
        // Per-op sdk-test-control.json skip.
        $_live = !empty($setup["live"]);
        foreach (["create"] as $_op) {
            [$_shouldSkip, $_reason] = Runner::is_control_skipped("entityOp", "cancel_transaction." . $_op, $_live ? "live" : "unit");
            if ($_shouldSkip) {
                $this->markTestSkipped($_reason ?? "skipped via sdk-test-control.json");
                return;
            }
        }
        // The basic flow consumes synthetic IDs from the fixture. In live mode
        // without an *_ENTID env override, those IDs hit the live API and 4xx.
        if (!empty($setup["synthetic_only"])) {
            $this->markTestSkipped("live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CANCEL_TRANSACTION_ENTID JSON to run live");
            return;
        }
        $client = $setup["client"];

        // CREATE
        $cancel_transaction_ref01_ent = $client->CancelTransaction(null);
        $cancel_transaction_ref01_data = Helpers::to_map(Vs::getprop(
            Vs::getpath($setup["data"], "new.cancel_transaction"), "cancel_transaction_ref01"));

        $cancel_transaction_ref01_data_result = $cancel_transaction_ref01_ent->create($cancel_transaction_ref01_data, null);
        $cancel_transaction_ref01_data = Helpers::to_map(is_object($cancel_transaction_ref01_data_result) && method_exists($cancel_transaction_ref01_data_result, 'data_get') ? $cancel_transaction_ref01_data_result->data_get() : $cancel_transaction_ref01_data_result);
        $this->assertNotNull($cancel_transaction_ref01_data);

    }
}

function cancel_transaction_basic_setup($extra)
{
    Runner::load_env_local();

    $entity_data_file = __DIR__ . '/../../.sdk/test/entity/cancel_transaction/CancelTransactionTestData.json';
    $entity_data_source = file_get_contents($entity_data_file);
    $entity_data = json_decode($entity_data_source, true);

    $options = [];
    $options["entity"] = $entity_data["existing"];

    $client = BluefinTecsMerchantServicesSDK::test($options, $extra);

    // Generate idmap.
    $idmap = [];
    foreach (["cancel_transaction01", "cancel_transaction02", "cancel_transaction03"] as $k) {
        $idmap[$k] = strtoupper($k);
    }

    // Detect ENTID env override before envOverride consumes it. When live
    // mode is on without a real override, the basic test runs against synthetic
    // IDs from the fixture and 4xx's. Surface this so the test can skip.
    $entid_env_raw = getenv("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CANCEL_TRANSACTION_ENTID");
    $idmap_overridden = $entid_env_raw !== false && str_starts_with(trim($entid_env_raw), "{");

    $env = Runner::env_override([
        "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CANCEL_TRANSACTION_ENTID" => $idmap,
        "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE" => "FALSE",
        "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN" => "FALSE",
        "BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY" => "NONE",
    ]);

    $idmap_resolved = Helpers::to_map(
        $env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CANCEL_TRANSACTION_ENTID"]);
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
