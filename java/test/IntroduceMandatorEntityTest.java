package voxgig.bluefintecsmerchantservicessdk.sdktest;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.junit.jupiter.api.Assumptions;
import org.junit.jupiter.api.Test;

import voxgig.bluefintecsmerchantservicessdk.core.Helpers;
import voxgig.bluefintecsmerchantservicessdk.core.SdkEntity;
import voxgig.bluefintecsmerchantservicessdk.core.BluefinTecsMerchantServicesSDK;
import voxgig.bluefintecsmerchantservicessdk.utility.Json;
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct;

@SuppressWarnings({"unchecked", "unused"})
public class IntroduceMandatorEntityTest {

  @Test
  public void instance() {
    BluefinTecsMerchantServicesSDK testsdk = BluefinTecsMerchantServicesSDK.testSDK();
    SdkEntity ent = testsdk.introduceMandator(null);
    assertNotNull(ent, "expected non-null introduce_mandator entity");
  }

  @Test
  public void basic() {
    RunnerSupport.EntityTestSetup setup = introduceMandatorBasicSetup(null);
    // Per-op sdk-test-control.json skip — basic test exercises a flow
    // with multiple ops; skipping any op skips the whole flow.
    String mode = setup.live ? "live" : "unit";
    for (String op : new String[] { "create" }) {
      String reason = RunnerSupport.skipReason("entityOp", "introduce_mandator." + op, mode);
      Assumptions.assumeTrue(reason == null,
          reason == null || "".equals(reason)
              ? "skipped via sdk-test-control.json" : reason);
    }
    // The basic flow consumes synthetic IDs from the fixture. In live mode
    // without an *_ENTID env override, those IDs hit the live API and 4xx.
    Assumptions.assumeFalse(setup.syntheticOnly,
        "live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_INTRODUCE_MANDATOR_ENTID JSON to run live");
    BluefinTecsMerchantServicesSDK client = setup.client;

    // CREATE
    SdkEntity introduceMandatorRef01Ent = client.introduceMandator(null);
    Map<String, Object> introduceMandatorRef01Data = Helpers.toMapAny(Struct.getprop(
        Struct.getpath(setup.data, "new.introduce_mandator"), "introduce_mandator_ref01"));

    Object introduceMandatorRef01DataResult = introduceMandatorRef01Ent.create(introduceMandatorRef01Data, null);
    introduceMandatorRef01Data = Helpers.toMapAny(introduceMandatorRef01DataResult instanceof SdkEntity ? ((SdkEntity) introduceMandatorRef01DataResult).data() : introduceMandatorRef01DataResult);
    assertNotNull(introduceMandatorRef01Data, "expected create result to be a map");

  }

  static RunnerSupport.EntityTestSetup introduceMandatorBasicSetup(Map<String, Object> extra) {
    RunnerSupport.loadEnvLocal();

    Map<String, Object> entityData;
    try {
      String entityDataSource = Files.readString(Path.of(
          "..", ".sdk", "test", "entity", "introduce_mandator", "IntroduceMandatorTestData.json"));
      entityData = Helpers.toMapAny(Json.parse(entityDataSource));
    }
    catch (Exception e) {
      throw new AssertionError("failed to read introduce_mandator test data: " + e.getMessage(), e);
    }

    Map<String, Object> options = new LinkedHashMap<>();
    options.put("entity", entityData.get("existing"));

    BluefinTecsMerchantServicesSDK client = BluefinTecsMerchantServicesSDK.testSDK(options, extra);

    // Generate idmap via transform, matching TS pattern.
    List<Object> idnames = new ArrayList<>();
    idnames.add("introduce_mandator01");
    idnames.add("introduce_mandator02");
    idnames.add("introduce_mandator03");
    Object idmap = Struct.transform(idnames, Json.parse(
        "{\"`$PACK`\": [\"\", {"
        + "\"`$KEY`\": \"`$COPY`\","
        + "\"`$VAL`\": [\"`$FORMAT`\", \"upper\", \"`$COPY`\"]"
        + "}]}"));

    // Detect ENTID env override before envOverride consumes it. When live
    // mode is on without a real override, the basic test runs against
    // synthetic IDs from the fixture and 4xx's. Surface this so the test
    // can skip.
    String entidEnvRaw = RunnerSupport.getenv("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_INTRODUCE_MANDATOR_ENTID");
    boolean idmapOverridden = entidEnvRaw != null
        && entidEnvRaw.trim().startsWith("{");

    Map<String, Object> envm = new LinkedHashMap<>();
    envm.put("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_INTRODUCE_MANDATOR_ENTID", idmap);
    envm.put("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE", "FALSE");
    envm.put("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN", "FALSE");
    envm.put("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY", "NONE");
    Map<String, Object> env = RunnerSupport.envOverride(envm);

    Map<String, Object> idmapResolved = Helpers.toMapAny(env.get("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_INTRODUCE_MANDATOR_ENTID"));
    if (idmapResolved == null) {
      idmapResolved = Helpers.toMapAny(idmap);
    }

    boolean live = "TRUE".equals(env.get("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"));
    if (live) {
      Map<String, Object> liveOpts = new LinkedHashMap<>();
      liveOpts.put("apikey", env.get("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"));
      Object mergedOpts = Struct.merge(Struct.jt(liveOpts, extra));
      client = new BluefinTecsMerchantServicesSDK(Helpers.toMapAny(mergedOpts));
    }

    RunnerSupport.EntityTestSetup setup = new RunnerSupport.EntityTestSetup();
    setup.client = client;
    setup.data = entityData;
    setup.idmap = idmapResolved;
    setup.env = env;
    setup.explain = "TRUE".equals(env.get("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN"));
    setup.live = live;
    setup.syntheticOnly = live && !idmapOverridden;
    setup.now = System.currentTimeMillis();
    return setup;
  }
}
