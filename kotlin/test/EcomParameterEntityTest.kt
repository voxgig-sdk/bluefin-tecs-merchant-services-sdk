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
class EcomParameterEntityTest {

  @Test
  fun instance() {
    val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
    val ent = testsdk.ecomParameter(null)
    assertNotNull(ent, "expected non-null ecom_parameter entity")
  }

  @Test
  fun basic() {
    val setup = ecomParameterBasicSetup(null)
    // Per-op sdk-test-control.json skip.
    val mode = if (setup.live) "live" else "unit"
    for (op in arrayOf("create")) {
      val reason = RunnerSupport.skipReason("entityOp", "ecom_parameter.$op", mode)
      Assumptions.assumeTrue(
        reason == null,
        if (reason == null || "" == reason) "skipped via sdk-test-control.json" else reason,
      )
    }
    Assumptions.assumeFalse(
      setup.syntheticOnly,
      "live entity test uses synthetic IDs from fixture — set BLUEFINTECSMERCHANTSERVICES_TEST_ECOM_PARAMETER_ENTID JSON to run live",
    )
    val client = setup.client

    // CREATE
    val ecomParameterRef01Ent = client.ecomParameter(null)
    var ecomParameterRef01Data: MutableMap<String, Any?> = (Helpers.toMapAny(Struct.getprop(
        Struct.getpath(setup.data, "new.ecom_parameter"), "ecom_parameter_ref01")) ?: linkedMapOf())

    val ecomParameterRef01DataResult = ecomParameterRef01Ent.create(ecomParameterRef01Data, null)
    ecomParameterRef01Data = Helpers.toMapAny(ecomParameterRef01DataResult) ?: linkedMapOf()
    assertNotNull(ecomParameterRef01Data, "expected create result to be a map")

  }

  companion object {
    fun ecomParameterBasicSetup(extra: MutableMap<String, Any?>?): RunnerSupport.EntityTestSetup {
      RunnerSupport.loadEnvLocal()

      val entityData: MutableMap<String, Any?>
      try {
        val entityDataSource = Files.readString(Paths.get(
            "..", ".sdk", "test", "entity", "ecom_parameter", "EcomParameterTestData.json"))
        entityData = Helpers.toMapAny(Json.parse(entityDataSource)) ?: linkedMapOf()
      } catch (e: Exception) {
        throw AssertionError("failed to read ecom_parameter test data: " + e.message, e)
      }

      val options = linkedMapOf<String, Any?>()
      options["entity"] = entityData["existing"]

      var client = BluefinTecsMerchantServicesSDK.testSDK(options, extra)

      // Generate idmap via transform, matching TS pattern.
      val idnames = mutableListOf<Any?>()
      idnames.add("ecom_parameter01")
      idnames.add("ecom_parameter02")
      idnames.add("ecom_parameter03")
      val idmap = Struct.transform(idnames, Json.parse(
          "{\"`\$PACK`\": [\"\", {" +
          "\"`\$KEY`\": \"`\$COPY`\"," +
          "\"`\$VAL`\": [\"`\$FORMAT`\", \"upper\", \"`\$COPY`\"]" +
          "}]}"))

      // Detect ENTID env override before envOverride consumes it.
      val entidEnvRaw = RunnerSupport.getenv("BLUEFINTECSMERCHANTSERVICES_TEST_ECOM_PARAMETER_ENTID")
      val idmapOverridden = entidEnvRaw != null && entidEnvRaw.trim().startsWith("{")

      val envm = linkedMapOf<String, Any?>()
      envm["BLUEFINTECSMERCHANTSERVICES_TEST_ECOM_PARAMETER_ENTID"] = idmap
      envm["BLUEFINTECSMERCHANTSERVICES_TEST_LIVE"] = "FALSE"
      envm["BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN"] = "FALSE"
      envm["BLUEFINTECSMERCHANTSERVICES_APIKEY"] = "NONE"
      val env = RunnerSupport.envOverride(envm)

      var idmapResolved = Helpers.toMapAny(env["BLUEFINTECSMERCHANTSERVICES_TEST_ECOM_PARAMETER_ENTID"])
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
