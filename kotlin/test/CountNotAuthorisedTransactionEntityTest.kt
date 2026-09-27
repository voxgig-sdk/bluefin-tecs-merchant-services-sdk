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
class CountNotAuthorisedTransactionEntityTest {

  @Test
  fun instance() {
    val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
    val ent = testsdk.countNotAuthorisedTransaction(null)
    assertNotNull(ent, "expected non-null count_not_authorised_transaction entity")
  }

  @Test
  fun basic() {
    val setup = countNotAuthorisedTransactionBasicSetup(null)
    // Per-op sdk-test-control.json skip.
    val mode = if (setup.live) "live" else "unit"
    for (op in arrayOf<String>("create")) {
      val reason = RunnerSupport.skipReason("entityOp", "count_not_authorised_transaction.$op", mode)
      Assumptions.assumeTrue(
        reason == null,
        if (reason == null || "" == reason) "skipped via sdk-test-control.json" else reason,
      )
    }
    Assumptions.assumeFalse(
      setup.syntheticOnly,
      "live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_COUNT_NOT_AUTHORISED_TRANSACTION_ENTID JSON to run live",
    )
    val client = setup.client

    // CREATE
    val countNotAuthorisedTransactionRef01Ent = client.countNotAuthorisedTransaction(null)
    var countNotAuthorisedTransactionRef01Data: MutableMap<String, Any?> = (Helpers.toMapAny(Struct.getprop(
        Struct.getpath(setup.data, "new.count_not_authorised_transaction"), "count_not_authorised_transaction_ref01")) ?: linkedMapOf())

    val countNotAuthorisedTransactionRef01DataResult = countNotAuthorisedTransactionRef01Ent.create(countNotAuthorisedTransactionRef01Data, null)
    countNotAuthorisedTransactionRef01Data = Helpers.toMapAny(if (countNotAuthorisedTransactionRef01DataResult is SdkEntity) countNotAuthorisedTransactionRef01DataResult.data() else countNotAuthorisedTransactionRef01DataResult) ?: linkedMapOf()
    assertNotNull(countNotAuthorisedTransactionRef01Data, "expected create result to be a map")

  }

  companion object {
    fun countNotAuthorisedTransactionBasicSetup(extra: MutableMap<String, Any?>?): RunnerSupport.EntityTestSetup {
      RunnerSupport.loadEnvLocal()

      val entityData: MutableMap<String, Any?>
      try {
        val entityDataSource = Files.readString(Paths.get(
            "..", ".sdk", "test", "entity", "count_not_authorised_transaction", "CountNotAuthorisedTransactionTestData.json"))
        entityData = Helpers.toMapAny(Json.parse(entityDataSource)) ?: linkedMapOf()
      } catch (e: Exception) {
        throw AssertionError("failed to read count_not_authorised_transaction test data: " + e.message, e)
      }

      val options = linkedMapOf<String, Any?>()
      options["entity"] = entityData["existing"]

      var client = BluefinTecsMerchantServicesSDK.testSDK(options, extra)

      // Generate idmap via transform, matching TS pattern.
      val idnames = mutableListOf<Any?>()
      idnames.add("count_not_authorised_transaction01")
      idnames.add("count_not_authorised_transaction02")
      idnames.add("count_not_authorised_transaction03")
      val idmap = Struct.transform(idnames, Json.parse(
          "{\"`\$PACK`\": [\"\", {" +
          "\"`\$KEY`\": \"`\$COPY`\"," +
          "\"`\$VAL`\": [\"`\$FORMAT`\", \"upper\", \"`\$COPY`\"]" +
          "}]}"))

      // Detect ENTID env override before envOverride consumes it.
      val entidEnvRaw = RunnerSupport.getenv("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_COUNT_NOT_AUTHORISED_TRANSACTION_ENTID")
      val idmapOverridden = entidEnvRaw != null && entidEnvRaw.trim().startsWith("{")

      val envm = linkedMapOf<String, Any?>()
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_COUNT_NOT_AUTHORISED_TRANSACTION_ENTID"] = idmap
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"] = "FALSE"
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN"] = "FALSE"
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"] = "NONE"
      val env = RunnerSupport.envOverride(envm)

      var idmapResolved = Helpers.toMapAny(env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_COUNT_NOT_AUTHORISED_TRANSACTION_ENTID"])
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
