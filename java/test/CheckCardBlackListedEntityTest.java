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
public class CheckCardBlackListedEntityTest {

  @Test
  public void instance() {
    BluefinTecsMerchantServicesSDK testsdk = BluefinTecsMerchantServicesSDK.testSDK();
    SdkEntity ent = testsdk.checkCardBlackListed(null);
    assertNotNull(ent, "expected non-null check_card_black_listed entity");
  }

  @Test
  public void basic() {
    RunnerSupport.EntityTestSetup setup = checkCardBlackListedBasicSetup(null);
    // Per-op sdk-test-control.json skip — basic test exercises a flow
    // with multiple ops; skipping any op skips the whole flow.
    String mode = setup.live ? "live" : "unit";
    for (String op : new String[] { "create" }) {
      String reason = RunnerSupport.skipReason("entityOp", "check_card_black_listed." + op, mode);
      Assumptions.assumeTrue(reason == null,
          reason == null || "".equals(reason)
              ? "skipped via sdk-test-control.json" : reason);
    }
    // The basic flow consumes synthetic IDs from the fixture. In live mode
    // without an *_ENTID env override, those IDs hit the live API and 4xx.
    Assumptions.assumeFalse(setup.syntheticOnly,
        "live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CHECK_CARD_BLACK_LISTED_ENTID JSON to run live");
    BluefinTecsMerchantServicesSDK client = setup.client;

    // CREATE
    SdkEntity checkCardBlackListedRef01Ent = client.checkCardBlackListed(null);
    Map<String, Object> checkCardBlackListedRef01Data = Helpers.toMapAny(Struct.getprop(
        Struct.getpath(setup.data, "new.check_card_black_listed"), "check_card_black_listed_ref01"));

    Object checkCardBlackListedRef01DataResult = checkCardBlackListedRef01Ent.create(checkCardBlackListedRef01Data, null);
    checkCardBlackListedRef01Data = Helpers.toMapAny(checkCardBlackListedRef01DataResult instanceof SdkEntity ? ((SdkEntity) checkCardBlackListedRef01DataResult).data() : checkCardBlackListedRef01DataResult);
    assertNotNull(checkCardBlackListedRef01Data, "expected create result to be a map");

  }

  static RunnerSupport.EntityTestSetup checkCardBlackListedBasicSetup(Map<String, Object> extra) {
    RunnerSupport.loadEnvLocal();

    Map<String, Object> entityData;
    try {
      String entityDataSource = Files.readString(Path.of(
          "..", ".sdk", "test", "entity", "check_card_black_listed", "CheckCardBlackListedTestData.json"));
      entityData = Helpers.toMapAny(Json.parse(entityDataSource));
    }
    catch (Exception e) {
      throw new AssertionError("failed to read check_card_black_listed test data: " + e.getMessage(), e);
    }

    Map<String, Object> options = new LinkedHashMap<>();
    options.put("entity", entityData.get("existing"));

    BluefinTecsMerchantServicesSDK client = BluefinTecsMerchantServicesSDK.testSDK(options, extra);

    // Generate idmap via transform, matching TS pattern.
    List<Object> idnames = new ArrayList<>();
    idnames.add("check_card_black_listed01");
    idnames.add("check_card_black_listed02");
    idnames.add("check_card_black_listed03");
    Object idmap = Struct.transform(idnames, Json.parse(
        "{\"`$PACK`\": [\"\", {"
        + "\"`$KEY`\": \"`$COPY`\","
        + "\"`$VAL`\": [\"`$FORMAT`\", \"upper\", \"`$COPY`\"]"
        + "}]}"));

    // Detect ENTID env override before envOverride consumes it. When live
    // mode is on without a real override, the basic test runs against
    // synthetic IDs from the fixture and 4xx's. Surface this so the test
    // can skip.
    String entidEnvRaw = RunnerSupport.getenv("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CHECK_CARD_BLACK_LISTED_ENTID");
    boolean idmapOverridden = entidEnvRaw != null
        && entidEnvRaw.trim().startsWith("{");

    Map<String, Object> envm = new LinkedHashMap<>();
    envm.put("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CHECK_CARD_BLACK_LISTED_ENTID", idmap);
    envm.put("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE", "FALSE");
    envm.put("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN", "FALSE");
    envm.put("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY", "NONE");
    Map<String, Object> env = RunnerSupport.envOverride(envm);

    Map<String, Object> idmapResolved = Helpers.toMapAny(env.get("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CHECK_CARD_BLACK_LISTED_ENTID"));
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
