package voxgig.bluefintecsmerchantservicessdk.sdktest

import java.nio.file.Files
import java.nio.file.Paths

import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Assertions.assertFalse
import org.junit.jupiter.api.Assertions.assertNotNull
import org.junit.jupiter.api.Assertions.assertTrue
import org.junit.jupiter.api.Assumptions
import org.junit.jupiter.api.Test

import voxgig.bluefintecsmerchantservicessdk.core.Helpers
import voxgig.bluefintecsmerchantservicessdk.core.SdkEntity
import voxgig.bluefintecsmerchantservicessdk.core.BluefinTecsMerchantServicesSDK
import voxgig.bluefintecsmerchantservicessdk.utility.Json
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

@Suppress("UNCHECKED_CAST", "UNUSED_VARIABLE", "UNUSED_VALUE")
class MoveTidEntityTest {

  @Test
  fun instance() {
    val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
    val ent = testsdk.moveTid(null)
    assertNotNull(ent, "expected non-null move_tid entity")
  }

  @Test
  fun basic() {
    val setup = moveTidBasicSetup(null)
    // Per-op sdk-test-control.json skip.
    val mode = if (setup.live) "live" else "unit"
    for (op in arrayOf("create")) {
      val reason = RunnerSupport.skipReason("entityOp", "move_tid.$op", mode)
      Assumptions.assumeTrue(
        reason == null,
        if (reason == null || "" == reason) "skipped via sdk-test-control.json" else reason,
      )
    }
    Assumptions.assumeFalse(
      setup.syntheticOnly,
      "live entity test uses synthetic IDs from fixture — set BLUEFINTECSMERCHANTSERVICES_TEST_MOVE_TID_ENTID JSON to run live",
    )
    val client = setup.client

    // CREATE
    val moveTidRef01Ent = client.moveTid(null)
    var moveTidRef01Data: MutableMap<String, Any?> = (Helpers.toMapAny(Struct.getprop(
        Struct.getpath(setup.data, "new.move_tid"), "move_tid_ref01")) ?: linkedMapOf())

    val moveTidRef01DataResult = moveTidRef01Ent.create(moveTidRef01Data, null)
    moveTidRef01Data = Helpers.toMapAny(moveTidRef01DataResult) ?: linkedMapOf()
    assertNotNull(moveTidRef01Data, "expected create result to be a map")

  }

  companion object {
    fun moveTidBasicSetup(extra: MutableMap<String, Any?>?): RunnerSupport.EntityTestSetup {
      RunnerSupport.loadEnvLocal()

      val entityData: MutableMap<String, Any?>
      try {
        val entityDataSource = Files.readString(Paths.get(
            "..", ".sdk", "test", "entity", "move_tid", "MoveTidTestData.json"))
        entityData = Helpers.toMapAny(Json.parse(entityDataSource)) ?: linkedMapOf()
      } catch (e: Exception) {
        throw AssertionError("failed to read move_tid test data: " + e.message, e)
      }

      val options = linkedMapOf<String, Any?>()
      options["entity"] = entityData["existing"]

      var client = BluefinTecsMerchantServicesSDK.testSDK(options, extra)

      // Generate idmap via transform, matching TS pattern.
      val idnames = mutableListOf<Any?>()
      idnames.add("move_tid01")
      idnames.add("move_tid02")
      idnames.add("move_tid03")
      val idmap = Struct.transform(idnames, Json.parse(
          "{\"`\$PACK`\": [\"\", {" +
          "\"`\$KEY`\": \"`\$COPY`\"," +
          "\"`\$VAL`\": [\"`\$FORMAT`\", \"upper\", \"`\$COPY`\"]" +
          "}]}"))

      // Detect ENTID env override before envOverride consumes it.
      val entidEnvRaw = RunnerSupport.getenv("BLUEFINTECSMERCHANTSERVICES_TEST_MOVE_TID_ENTID")
      val idmapOverridden = entidEnvRaw != null && entidEnvRaw.trim().startsWith("{")

      val envm = linkedMapOf<String, Any?>()
      envm["BLUEFINTECSMERCHANTSERVICES_TEST_MOVE_TID_ENTID"] = idmap
      envm["BLUEFINTECSMERCHANTSERVICES_TEST_LIVE"] = "FALSE"
      envm["BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN"] = "FALSE"
      envm["BLUEFINTECSMERCHANTSERVICES_APIKEY"] = "NONE"
      val env = RunnerSupport.envOverride(envm)

      var idmapResolved = Helpers.toMapAny(env["BLUEFINTECSMERCHANTSERVICES_TEST_MOVE_TID_ENTID"])
      if (idmapResolved == null) {
        idmapResolved = Helpers.toMapAny(idmap) ?: linkedMapOf()
      }

      val live = "TRUE" == env["BLUEFINTECSMERCHANTSERVICES_TEST_LIVE"]
      if (live) {
        val liveOpts = linkedMapOf<String, Any?>()
        liveOpts["apikey"] = env["BLUEFINTECSMERCHANTSERVICES_APIKEY"]
        val mergedOpts = Struct.merge(Struct.jt(liveOpts, extra))
        client = BluefinTecsMerchantServicesSDK(Helpers.toMapAny(mergedOpts))
      }

      val setup = RunnerSupport.EntityTestSetup()
      setup.client = client
      setup.data = entityData
      setup.idmap = idmapResolved
      setup.env = env
      setup.explain = "TRUE" == env["BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN"]
      setup.live = live
      setup.syntheticOnly = live && !idmapOverridden
      setup.now = System.currentTimeMillis()
      return setup
    }
  }
}
