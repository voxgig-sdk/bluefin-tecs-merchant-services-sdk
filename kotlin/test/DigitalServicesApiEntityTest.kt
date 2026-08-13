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
class DigitalServicesApiEntityTest {

  @Test
  fun instance() {
    val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
    val ent = testsdk.digitalServicesApi(null)
    assertNotNull(ent, "expected non-null digital_services_api entity")
  }

  @Test
  fun basic() {
    val setup = digitalServicesApiBasicSetup(null)
    // Per-op sdk-test-control.json skip.
    val mode = if (setup.live) "live" else "unit"
    for (op in arrayOf("create", "load")) {
      val reason = RunnerSupport.skipReason("entityOp", "digital_services_api.$op", mode)
      Assumptions.assumeTrue(
        reason == null,
        if (reason == null || "" == reason) "skipped via sdk-test-control.json" else reason,
      )
    }
    Assumptions.assumeFalse(
      setup.syntheticOnly,
      "live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_DIGITAL_SERVICES_API_ENTID JSON to run live",
    )
    val client = setup.client

    // CREATE
    val digitalServicesApiRef01Ent = client.digitalServicesApi(null)
    var digitalServicesApiRef01Data: MutableMap<String, Any?> = (Helpers.toMapAny(Struct.getprop(
        Struct.getpath(setup.data, "new.digital_services_api"), "digital_services_api_ref01")) ?: linkedMapOf())

    val digitalServicesApiRef01DataResult = digitalServicesApiRef01Ent.create(digitalServicesApiRef01Data, null)
    digitalServicesApiRef01Data = Helpers.toMapAny(if (digitalServicesApiRef01DataResult is SdkEntity) digitalServicesApiRef01DataResult.data() else digitalServicesApiRef01DataResult) ?: linkedMapOf()
    assertNotNull(digitalServicesApiRef01Data, "expected create result to be a map")

    // LOAD
    val digitalServicesApiRef01MatchDt0 = linkedMapOf<String, Any?>()
    val digitalServicesApiRef01DataDt0Loaded = digitalServicesApiRef01Ent.load(digitalServicesApiRef01MatchDt0, null)
    assertNotNull(digitalServicesApiRef01DataDt0Loaded, "expected load result to be non-null")

  }

  companion object {
    fun digitalServicesApiBasicSetup(extra: MutableMap<String, Any?>?): RunnerSupport.EntityTestSetup {
      RunnerSupport.loadEnvLocal()

      val entityData: MutableMap<String, Any?>
      try {
        val entityDataSource = Files.readString(Paths.get(
            "..", ".sdk", "test", "entity", "digital_services_api", "DigitalServicesApiTestData.json"))
        entityData = Helpers.toMapAny(Json.parse(entityDataSource)) ?: linkedMapOf()
      } catch (e: Exception) {
        throw AssertionError("failed to read digital_services_api test data: " + e.message, e)
      }

      val options = linkedMapOf<String, Any?>()
      options["entity"] = entityData["existing"]

      var client = BluefinTecsMerchantServicesSDK.testSDK(options, extra)

      // Generate idmap via transform, matching TS pattern.
      val idnames = mutableListOf<Any?>()
      idnames.add("digital_services_api01")
      idnames.add("digital_services_api02")
      idnames.add("digital_services_api03")
      idnames.add("mandator_clearing_export_download01")
      idnames.add("mandator_clearing_export_download02")
      idnames.add("mandator_clearing_export_download03")
      val idmap = Struct.transform(idnames, Json.parse(
          "{\"`\$PACK`\": [\"\", {" +
          "\"`\$KEY`\": \"`\$COPY`\"," +
          "\"`\$VAL`\": [\"`\$FORMAT`\", \"upper\", \"`\$COPY`\"]" +
          "}]}"))

      // Detect ENTID env override before envOverride consumes it.
      val entidEnvRaw = RunnerSupport.getenv("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_DIGITAL_SERVICES_API_ENTID")
      val idmapOverridden = entidEnvRaw != null && entidEnvRaw.trim().startsWith("{")

      val envm = linkedMapOf<String, Any?>()
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_DIGITAL_SERVICES_API_ENTID"] = idmap
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"] = "FALSE"
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN"] = "FALSE"
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"] = "NONE"
      val env = RunnerSupport.envOverride(envm)

      var idmapResolved = Helpers.toMapAny(env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_DIGITAL_SERVICES_API_ENTID"])
      if (idmapResolved == null) {
        idmapResolved = Helpers.toMapAny(idmap) ?: linkedMapOf()
      }

      val live = "TRUE" == env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"]
      if (live) {
        val liveOpts = linkedMapOf<String, Any?>()
        liveOpts["apikey"] = env["BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"]
        val mergedOpts = Struct.merge(Struct.jt(liveOpts, extra))
        client = BluefinTecsMerchantServicesSDK(Helpers.toMapAny(mergedOpts))
      }

      val setup = RunnerSupport.EntityTestSetup()
      setup.client = client
      setup.data = entityData
      setup.idmap = idmapResolved
      setup.env = env
      setup.explain = "TRUE" == env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN"]
      setup.live = live
      setup.syntheticOnly = live && !idmapOverridden
      setup.now = System.currentTimeMillis()
      return setup
    }
  }
}
