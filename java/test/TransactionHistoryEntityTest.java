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
public class TransactionHistoryEntityTest {

  @Test
  public void instance() {
    BluefinTecsMerchantServicesSDK testsdk = BluefinTecsMerchantServicesSDK.testSDK();
    SdkEntity ent = testsdk.transactionHistory(null);
    assertNotNull(ent, "expected non-null transaction_history entity");
  }

  @Test
  public void basic() {
    RunnerSupport.EntityTestSetup setup = transactionHistoryBasicSetup(null);
    // Per-op sdk-test-control.json skip — basic test exercises a flow
    // with multiple ops; skipping any op skips the whole flow.
    String mode = setup.live ? "live" : "unit";
    for (String op : new String[] { "create" }) {
      String reason = RunnerSupport.skipReason("entityOp", "transaction_history." + op, mode);
      Assumptions.assumeTrue(reason == null,
          reason == null || "".equals(reason)
              ? "skipped via sdk-test-control.json" : reason);
    }
    // The basic flow consumes synthetic IDs from the fixture. In live mode
    // without an *_ENTID env override, those IDs hit the live API and 4xx.
    Assumptions.assumeFalse(setup.syntheticOnly,
        "live entity test uses synthetic IDs from fixture — set BLUEFINTECSMERCHANTSERVICES_TEST_TRANSACTION_HISTORY_ENTID JSON to run live");
    BluefinTecsMerchantServicesSDK client = setup.client;

    // CREATE
    SdkEntity transactionHistoryRef01Ent = client.transactionHistory(null);
    Map<String, Object> transactionHistoryRef01Data = Helpers.toMapAny(Struct.getprop(
        Struct.getpath(setup.data, "new.transaction_history"), "transaction_history_ref01"));

    Object transactionHistoryRef01DataResult = transactionHistoryRef01Ent.create(transactionHistoryRef01Data, null);
    transactionHistoryRef01Data = Helpers.toMapAny(transactionHistoryRef01DataResult);
    assertNotNull(transactionHistoryRef01Data, "expected create result to be a map");

  }

  static RunnerSupport.EntityTestSetup transactionHistoryBasicSetup(Map<String, Object> extra) {
    RunnerSupport.loadEnvLocal();

    Map<String, Object> entityData;
    try {
      String entityDataSource = Files.readString(Path.of(
          "..", ".sdk", "test", "entity", "transaction_history", "TransactionHistoryTestData.json"));
      entityData = Helpers.toMapAny(Json.parse(entityDataSource));
    }
    catch (Exception e) {
      throw new AssertionError("failed to read transaction_history test data: " + e.getMessage(), e);
    }

    Map<String, Object> options = new LinkedHashMap<>();
    options.put("entity", entityData.get("existing"));

    BluefinTecsMerchantServicesSDK client = BluefinTecsMerchantServicesSDK.testSDK(options, extra);

    // Generate idmap via transform, matching TS pattern.
    List<Object> idnames = new ArrayList<>();
    idnames.add("transaction_history01");
    idnames.add("transaction_history02");
    idnames.add("transaction_history03");
    Object idmap = Struct.transform(idnames, Json.parse(
        "{\"`$PACK`\": [\"\", {"
        + "\"`$KEY`\": \"`$COPY`\","
        + "\"`$VAL`\": [\"`$FORMAT`\", \"upper\", \"`$COPY`\"]"
        + "}]}"));

    // Detect ENTID env override before envOverride consumes it. When live
    // mode is on without a real override, the basic test runs against
    // synthetic IDs from the fixture and 4xx's. Surface this so the test
    // can skip.
    String entidEnvRaw = RunnerSupport.getenv("BLUEFINTECSMERCHANTSERVICES_TEST_TRANSACTION_HISTORY_ENTID");
    boolean idmapOverridden = entidEnvRaw != null
        && entidEnvRaw.trim().startsWith("{");

    Map<String, Object> envm = new LinkedHashMap<>();
    envm.put("BLUEFINTECSMERCHANTSERVICES_TEST_TRANSACTION_HISTORY_ENTID", idmap);
    envm.put("BLUEFINTECSMERCHANTSERVICES_TEST_LIVE", "FALSE");
    envm.put("BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN", "FALSE");
    envm.put("BLUEFINTECSMERCHANTSERVICES_APIKEY", "NONE");
    Map<String, Object> env = RunnerSupport.envOverride(envm);

    Map<String, Object> idmapResolved = Helpers.toMapAny(env.get("BLUEFINTECSMERCHANTSERVICES_TEST_TRANSACTION_HISTORY_ENTID"));
    if (idmapResolved == null) {
      idmapResolved = Helpers.toMapAny(idmap);
    }

    boolean live = "TRUE".equals(env.get("BLUEFINTECSMERCHANTSERVICES_TEST_LIVE"));
    if (live) {
      Map<String, Object> liveOpts = new LinkedHashMap<>();
      liveOpts.put("apikey", env.get("BLUEFINTECSMERCHANTSERVICES_APIKEY"));
      Object mergedOpts = Struct.merge(Struct.jt(liveOpts, extra));
      client = new BluefinTecsMerchantServicesSDK(Helpers.toMapAny(mergedOpts));
    }

    RunnerSupport.EntityTestSetup setup = new RunnerSupport.EntityTestSetup();
    setup.client = client;
    setup.data = entityData;
    setup.idmap = idmapResolved;
    setup.env = env;
    setup.explain = "TRUE".equals(env.get("BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN"));
    setup.live = live;
    setup.syntheticOnly = live && !idmapOverridden;
    setup.now = System.currentTimeMillis();
    return setup;
  }
}
