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
class MandatorClearingExportDownloadEntityTest {

  @Test
  fun instance() {
    val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
    val ent = testsdk.mandatorClearingExportDownload(null)
    assertNotNull(ent, "expected non-null mandator_clearing_export_download entity")
  }

  @Test
  fun basic() {
    val setup = mandatorClearingExportDownloadBasicSetup(null)
    // Per-op sdk-test-control.json skip.
    val mode = if (setup.live) "live" else "unit"
    for (op in arrayOf("create", "load")) {
      val reason = RunnerSupport.skipReason("entityOp", "mandator_clearing_export_download.$op", mode)
      Assumptions.assumeTrue(
        reason == null,
        if (reason == null || "" == reason) "skipped via sdk-test-control.json" else reason,
      )
    }
    Assumptions.assumeFalse(
      setup.syntheticOnly,
      "live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_DOWNLOAD_ENTID JSON to run live",
    )
    val client = setup.client

    // CREATE
    val mandatorClearingExportDownloadRef01Ent = client.mandatorClearingExportDownload(null)
    var mandatorClearingExportDownloadRef01Data: MutableMap<String, Any?> = (Helpers.toMapAny(Struct.getprop(
        Struct.getpath(setup.data, "new.mandator_clearing_export_download"), "mandator_clearing_export_download_ref01")) ?: linkedMapOf())

    val mandatorClearingExportDownloadRef01DataResult = mandatorClearingExportDownloadRef01Ent.create(mandatorClearingExportDownloadRef01Data, null)
    mandatorClearingExportDownloadRef01Data = Helpers.toMapAny(if (mandatorClearingExportDownloadRef01DataResult is SdkEntity) mandatorClearingExportDownloadRef01DataResult.data() else mandatorClearingExportDownloadRef01DataResult) ?: linkedMapOf()
    assertNotNull(mandatorClearingExportDownloadRef01Data, "expected create result to be a map")

    // LOAD
    val mandatorClearingExportDownloadRef01MatchDt0 = linkedMapOf<String, Any?>()
    val mandatorClearingExportDownloadRef01DataDt0Loaded = mandatorClearingExportDownloadRef01Ent.load(mandatorClearingExportDownloadRef01MatchDt0, null)
    assertNotNull(mandatorClearingExportDownloadRef01DataDt0Loaded, "expected load result to be non-null")

  }

  companion object {
    fun mandatorClearingExportDownloadBasicSetup(extra: MutableMap<String, Any?>?): RunnerSupport.EntityTestSetup {
      RunnerSupport.loadEnvLocal()

      val entityData: MutableMap<String, Any?>
      try {
        val entityDataSource = Files.readString(Paths.get(
            "..", ".sdk", "test", "entity", "mandator_clearing_export_download", "MandatorClearingExportDownloadTestData.json"))
        entityData = Helpers.toMapAny(Json.parse(entityDataSource)) ?: linkedMapOf()
      } catch (e: Exception) {
        throw AssertionError("failed to read mandator_clearing_export_download test data: " + e.message, e)
      }

      val options = linkedMapOf<String, Any?>()
      options["entity"] = entityData["existing"]

      var client = BluefinTecsMerchantServicesSDK.testSDK(options, extra)

      // Generate idmap via transform, matching TS pattern.
      val idnames = mutableListOf<Any?>()
      idnames.add("mandator_clearing_export_download01")
      idnames.add("mandator_clearing_export_download02")
      idnames.add("mandator_clearing_export_download03")
      val idmap = Struct.transform(idnames, Json.parse(
          "{\"`\$PACK`\": [\"\", {" +
          "\"`\$KEY`\": \"`\$COPY`\"," +
          "\"`\$VAL`\": [\"`\$FORMAT`\", \"upper\", \"`\$COPY`\"]" +
          "}]}"))

      // Detect ENTID env override before envOverride consumes it.
      val entidEnvRaw = RunnerSupport.getenv("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_DOWNLOAD_ENTID")
      val idmapOverridden = entidEnvRaw != null && entidEnvRaw.trim().startsWith("{")

      val envm = linkedMapOf<String, Any?>()
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_DOWNLOAD_ENTID"] = idmap
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"] = "FALSE"
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN"] = "FALSE"
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"] = "NONE"
      val env = RunnerSupport.envOverride(envm)

      var idmapResolved = Helpers.toMapAny(env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_DOWNLOAD_ENTID"])
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
