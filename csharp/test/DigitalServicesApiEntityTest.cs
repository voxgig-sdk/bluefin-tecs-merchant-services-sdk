// digital_services_api entity test - basic flow (generated from the API model).

using System.Text.Json;

using Voxgig.Struct;
using Xunit;

namespace BluefinTecsMerchantServicesSdk.Test;

public class DigitalServicesApiEntityTest
{
    [Fact]
    public void Instance()
    {
        var testsdk = BluefinTecsMerchantServicesSDK.TestSDK(null, null);
        var ent = testsdk.DigitalServicesApi();
        Assert.NotNull(ent);
    }

    [Fact]
    public void Basic()
    {
        var setup = DigitalServicesApiBasicSetup(null);
        // Per-op sdk-test-control.json skip - basic test exercises a flow
        // with multiple ops; skipping any op skips the whole flow.
        var _mode = setup.Live ? "live" : "unit";
        foreach (var _op in new[] { "create", "load" })
        {
            var (_shouldSkip, _) = TestRunner.IsControlSkipped(
                "entityOp", "digital_services_api." + _op, _mode);
            if (_shouldSkip)
            {
                return; // skipped via sdk-test-control.json
            }
        }
        // The basic flow consumes synthetic IDs from the fixture. In live
        // mode without an *_ENTID env override, those IDs hit the live API
        // and 4xx; set BLUEFINTECSMERCHANTSERVICES_TEST_DIGITAL_SERVICES_API_ENTID JSON to run live.
        if (setup.SyntheticOnly)
        {
            return;
        }
        var client = setup.Client;

        // CREATE
        var digitalServicesApiRef01Ent = client.DigitalServicesApi();
        var digitalServicesApiRef01Data = Helpers.ToMapAny(StructUtils.GetProp(
            StructUtils.GetPath(setup.Data, StructUtils.Jt("new", "digital_services_api")),
            "digital_services_api_ref01"));

        var digitalServicesApiRef01DataResult = digitalServicesApiRef01Ent.Create(digitalServicesApiRef01Data, null);
        digitalServicesApiRef01Data = Helpers.ToMapAny(digitalServicesApiRef01DataResult);
        Assert.True(digitalServicesApiRef01Data != null, "expected create result to be a map");

        // LOAD
        var digitalServicesApiRef01MatchDt0 = new Dictionary<string, object?>();
        var digitalServicesApiRef01DataDt0Loaded = digitalServicesApiRef01Ent.Load(digitalServicesApiRef01MatchDt0, null);
        Assert.True(digitalServicesApiRef01DataDt0Loaded != null, "expected load result to be non-null");

    }

    private static EntityTestSetup DigitalServicesApiBasicSetup(
        Dictionary<string, object?>? extra)
    {
        TestRunner.LoadEnvLocal();

        var entityDataFile = Path.Combine(TestRunner.TestDir(),
            "..", "..", ".sdk", "test", "entity", "digital_services_api",
            "DigitalServicesApiTestData.json");

        var entityDataEl = JsonSerializer.Deserialize<JsonElement>(
            File.ReadAllText(entityDataFile));
        var entityData = StructRunner.ConvertElement(entityDataEl)
            as Dictionary<string, object?>
            ?? throw new InvalidOperationException(
                "failed to parse digital_services_api test data");

        var options = new Dictionary<string, object?>
        {
            ["entity"] = entityData["existing"],
        };

        var client = BluefinTecsMerchantServicesSDK.TestSDK(options, extra);

        // Generate idmap via transform, matching the TS pattern.
        var idmap = StructUtils.Transform(
            new List<object?> { "digital_services_api01", "digital_services_api02", "digital_services_api03", "mandator_clearing_export_download01", "mandator_clearing_export_download02", "mandator_clearing_export_download03" },
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
            "BLUEFINTECSMERCHANTSERVICES_TEST_DIGITAL_SERVICES_API_ENTID") ?? "";
        var idmapOverridden = entidEnvRaw != "" &&
            entidEnvRaw.Trim().StartsWith("{");

        var env = TestRunner.EnvOverride(new Dictionary<string, object?>
        {
            ["BLUEFINTECSMERCHANTSERVICES_TEST_DIGITAL_SERVICES_API_ENTID"] = idmap,
            ["BLUEFINTECSMERCHANTSERVICES_TEST_LIVE"] = "FALSE",
            ["BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN"] = "FALSE",
            ["BLUEFINTECSMERCHANTSERVICES_APIKEY"] = "NONE",
        });

        var idmapResolved = Helpers.ToMapAny(env["BLUEFINTECSMERCHANTSERVICES_TEST_DIGITAL_SERVICES_API_ENTID"])
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
