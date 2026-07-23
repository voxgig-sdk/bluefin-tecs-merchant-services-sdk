// mandator_clearing_export_summary entity test - basic flow (generated from the API model).

using System.Text.Json;

using Voxgig.Struct;
using Xunit;

namespace BluefinTecsMerchantServicesSdk.Test;

public class MandatorClearingExportSummaryEntityTest
{
    [Fact]
    public void Instance()
    {
        var testsdk = BluefinTecsMerchantServicesSDK.TestSDK(null, null);
        var ent = testsdk.MandatorClearingExportSummary();
        Assert.NotNull(ent);
    }

    [Fact]
    public void Basic()
    {
        var setup = MandatorClearingExportSummaryBasicSetup(null);
        // Per-op sdk-test-control.json skip - basic test exercises a flow
        // with multiple ops; skipping any op skips the whole flow.
        var _mode = setup.Live ? "live" : "unit";
        foreach (var _op in new[] { "create" })
        {
            var (_shouldSkip, _) = TestRunner.IsControlSkipped(
                "entityOp", "mandator_clearing_export_summary." + _op, _mode);
            if (_shouldSkip)
            {
                return; // skipped via sdk-test-control.json
            }
        }
        // The basic flow consumes synthetic IDs from the fixture. In live
        // mode without an *_ENTID env override, those IDs hit the live API
        // and 4xx; set BLUEFINTECSMERCHANTSERVICES_TEST_MANDATOR_CLEARING_EXPORT_SUMMARY_ENTID JSON to run live.
        if (setup.SyntheticOnly)
        {
            return;
        }
        var client = setup.Client;

        // CREATE
        var mandatorClearingExportSummaryRef01Ent = client.MandatorClearingExportSummary();
        var mandatorClearingExportSummaryRef01Data = Helpers.ToMapAny(StructUtils.GetProp(
            StructUtils.GetPath(setup.Data, StructUtils.Jt("new", "mandator_clearing_export_summary")),
            "mandator_clearing_export_summary_ref01"));

        var mandatorClearingExportSummaryRef01DataResult = mandatorClearingExportSummaryRef01Ent.Create(mandatorClearingExportSummaryRef01Data, null);
        mandatorClearingExportSummaryRef01Data = Helpers.ToMapAny(mandatorClearingExportSummaryRef01DataResult);
        Assert.True(mandatorClearingExportSummaryRef01Data != null, "expected create result to be a map");

    }

    private static EntityTestSetup MandatorClearingExportSummaryBasicSetup(
        Dictionary<string, object?>? extra)
    {
        TestRunner.LoadEnvLocal();

        var entityDataFile = Path.Combine(TestRunner.TestDir(),
            "..", "..", ".sdk", "test", "entity", "mandator_clearing_export_summary",
            "MandatorClearingExportSummaryTestData.json");

        var entityDataEl = JsonSerializer.Deserialize<JsonElement>(
            File.ReadAllText(entityDataFile));
        var entityData = StructRunner.ConvertElement(entityDataEl)
            as Dictionary<string, object?>
            ?? throw new InvalidOperationException(
                "failed to parse mandator_clearing_export_summary test data");

        var options = new Dictionary<string, object?>
        {
            ["entity"] = entityData["existing"],
        };

        var client = BluefinTecsMerchantServicesSDK.TestSDK(options, extra);

        // Generate idmap via transform, matching the TS pattern.
        var idmap = StructUtils.Transform(
            new List<object?> { "mandator_clearing_export_summary01", "mandator_clearing_export_summary02", "mandator_clearing_export_summary03" },
            new Dictionary<string, object?>
            {
                ["`$PACK`"] = new List<object?>
                {
                    "",
                    new Dictionary<string, object?>
                    {
                        ["`$KEY`"] = "`$COPY`",
                        ["`$VAL`"] = new List<object?> { "`$FORMAT`", "upper", "`$COPY`" },
                    },
                },
            });

        // Detect ENTID env override before EnvOverride consumes it. When
        // live mode is on without a real override, the basic test runs
        // against synthetic IDs from the fixture and 4xx's.
        var entidEnvRaw = Environment.GetEnvironmentVariable(
            "BLUEFINTECSMERCHANTSERVICES_TEST_MANDATOR_CLEARING_EXPORT_SUMMARY_ENTID") ?? "";
        var idmapOverridden = entidEnvRaw != "" &&
            entidEnvRaw.Trim().StartsWith("{");

        var env = TestRunner.EnvOverride(new Dictionary<string, object?>
        {
            ["BLUEFINTECSMERCHANTSERVICES_TEST_MANDATOR_CLEARING_EXPORT_SUMMARY_ENTID"] = idmap,
            ["BLUEFINTECSMERCHANTSERVICES_TEST_LIVE"] = "FALSE",
            ["BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN"] = "FALSE",
            ["BLUEFINTECSMERCHANTSERVICES_APIKEY"] = "NONE",
        });

        var idmapResolved = Helpers.ToMapAny(env["BLUEFINTECSMERCHANTSERVICES_TEST_MANDATOR_CLEARING_EXPORT_SUMMARY_ENTID"])
            ?? Helpers.ToMapAny(idmap)
            ?? new Dictionary<string, object?>();

        if (Equals(env["BLUEFINTECSMERCHANTSERVICES_TEST_LIVE"], "TRUE"))
        {
            var mergedOpts = StructUtils.Merge(new List<object?>
            {
                new Dictionary<string, object?>
                {
                    ["apikey"] = env["BLUEFINTECSMERCHANTSERVICES_APIKEY"],
                },
                extra,
            });
            client = new BluefinTecsMerchantServicesSDK(Helpers.ToMapAny(mergedOpts));
        }

        var live = Equals(env["BLUEFINTECSMERCHANTSERVICES_TEST_LIVE"], "TRUE");
        return new EntityTestSetup
        {
            Client = client,
            Data = entityData,
            Idmap = idmapResolved,
            Env = env,
            Explain = Equals(env["BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN"], "TRUE"),
            Live = live,
            SyntheticOnly = live && !idmapOverridden,
            Now = DateTimeOffset.UtcNow.ToUnixTimeMilliseconds(),
        };
    }
}
