// get_template_xml entity test - basic flow (generated from the API model).

using System.Text.Json;

using Voxgig.Struct;
using Xunit;

namespace BluefinTecsMerchantServicesSdk.Test;

public class GetTemplateXmlEntityTest
{
    [Fact]
    public void Instance()
    {
        var testsdk = BluefinTecsMerchantServicesSDK.TestSDK(null, null);
        var ent = testsdk.GetTemplateXml();
        Assert.NotNull(ent);
    }

    [Fact]
    public void Basic()
    {
        var setup = GetTemplateXmlBasicSetup(null);
        // Per-op sdk-test-control.json skip - basic test exercises a flow
        // with multiple ops; skipping any op skips the whole flow.
        var _mode = setup.Live ? "live" : "unit";
        foreach (var _op in new[] { "create" })
        {
            var (_shouldSkip, _) = TestRunner.IsControlSkipped(
                "entityOp", "get_template_xml." + _op, _mode);
            if (_shouldSkip)
            {
                return; // skipped via sdk-test-control.json
            }
        }
        // The basic flow consumes synthetic IDs from the fixture. In live
        // mode without an *_ENTID env override, those IDs hit the live API
        // and 4xx; set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_GET_TEMPLATE_XML_ENTID JSON to run live.
        if (setup.SyntheticOnly)
        {
            return;
        }
        var client = setup.Client;

        // CREATE
        var getTemplateXmlRef01Ent = client.GetTemplateXml();
        var getTemplateXmlRef01Data = Helpers.ToMapAny(StructUtils.GetProp(
            StructUtils.GetPath(setup.Data, StructUtils.Jt("new", "get_template_xml")),
            "get_template_xml_ref01"));

        var getTemplateXmlRef01DataResult = getTemplateXmlRef01Ent.Create(getTemplateXmlRef01Data, null);
        getTemplateXmlRef01Data = Helpers.ToMapAny(getTemplateXmlRef01DataResult is IEntity ce ? ce.Data() : getTemplateXmlRef01DataResult);
        Assert.True(getTemplateXmlRef01Data != null, "expected create result to be a map");

    }

    private static EntityTestSetup GetTemplateXmlBasicSetup(
        Dictionary<string, object?>? extra)
    {
        TestRunner.LoadEnvLocal();

        var entityDataFile = Path.Combine(TestRunner.TestDir(),
            "..", "..", ".sdk", "test", "entity", "get_template_xml",
            "GetTemplateXmlTestData.json");

        var entityDataEl = JsonSerializer.Deserialize<JsonElement>(
            File.ReadAllText(entityDataFile));
        var entityData = StructRunner.ConvertElement(entityDataEl)
            as Dictionary<string, object?>
            ?? throw new InvalidOperationException(
                "failed to parse get_template_xml test data");

        var options = new Dictionary<string, object?>
        {
            ["entity"] = entityData["existing"],
        };

        var client = BluefinTecsMerchantServicesSDK.TestSDK(options, extra);

        // Generate idmap via transform, matching the TS pattern.
        var idmap = StructUtils.Transform(
            new List<object?> { "get_template_xml01", "get_template_xml02", "get_template_xml03" },
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
            "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_GET_TEMPLATE_XML_ENTID") ?? "";
        var idmapOverridden = entidEnvRaw != "" &&
            entidEnvRaw.Trim().StartsWith("{");

        var env = TestRunner.EnvOverride(new Dictionary<string, object?>
        {
            ["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_GET_TEMPLATE_XML_ENTID"] = idmap,
            ["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"] = "FALSE",
            ["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN"] = "FALSE",
            ["BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"] = "NONE",
        });

        var idmapResolved = Helpers.ToMapAny(env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_GET_TEMPLATE_XML_ENTID"])
            ?? Helpers.ToMapAny(idmap)
            ?? new Dictionary<string, object?>();

        if (Equals(env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"], "TRUE"))
        {
            var mergedOpts = StructUtils.Merge(new List<object?>
            {
                new Dictionary<string, object?>
                {
                    ["apikey"] = env["BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"],
                },
                extra,
            });
            client = new BluefinTecsMerchantServicesSDK(Helpers.ToMapAny(mergedOpts));
        }

        var live = Equals(env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"], "TRUE");
        return new EntityTestSetup
        {
            Client = client,
            Data = entityData,
            Idmap = idmapResolved,
            Env = env,
            Explain = Equals(env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN"], "TRUE"),
            Live = live,
            SyntheticOnly = live && !idmapOverridden,
            Now = DateTimeOffset.UtcNow.ToUnixTimeMilliseconds(),
        };
    }
}
