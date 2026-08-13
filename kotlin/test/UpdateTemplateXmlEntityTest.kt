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
class UpdateTemplateXmlEntityTest {

  @Test
  fun instance() {
    val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
    val ent = testsdk.updateTemplateXml(null)
    assertNotNull(ent, "expected non-null update_template_xml entity")
  }

  @Test
  fun basic() {
    val setup = updateTemplateXmlBasicSetup(null)
    // Per-op sdk-test-control.json skip.
    val mode = if (setup.live) "live" else "unit"
    for (op in arrayOf("create")) {
      val reason = RunnerSupport.skipReason("entityOp", "update_template_xml.$op", mode)
      Assumptions.assumeTrue(
        reason == null,
        if (reason == null || "" == reason) "skipped via sdk-test-control.json" else reason,
      )
    }
    Assumptions.assumeFalse(
      setup.syntheticOnly,
      "live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_UPDATE_TEMPLATE_XML_ENTID JSON to run live",
    )
    val client = setup.client

    // CREATE
    val updateTemplateXmlRef01Ent = client.updateTemplateXml(null)
    var updateTemplateXmlRef01Data: MutableMap<String, Any?> = (Helpers.toMapAny(Struct.getprop(
        Struct.getpath(setup.data, "new.update_template_xml"), "update_template_xml_ref01")) ?: linkedMapOf())

    val updateTemplateXmlRef01DataResult = updateTemplateXmlRef01Ent.create(updateTemplateXmlRef01Data, null)
    updateTemplateXmlRef01Data = Helpers.toMapAny(if (updateTemplateXmlRef01DataResult is SdkEntity) updateTemplateXmlRef01DataResult.data() else updateTemplateXmlRef01DataResult) ?: linkedMapOf()
    assertNotNull(updateTemplateXmlRef01Data, "expected create result to be a map")

  }

  companion object {
    fun updateTemplateXmlBasicSetup(extra: MutableMap<String, Any?>?): RunnerSupport.EntityTestSetup {
      RunnerSupport.loadEnvLocal()

      val entityData: MutableMap<String, Any?>
      try {
        val entityDataSource = Files.readString(Paths.get(
            "..", ".sdk", "test", "entity", "update_template_xml", "UpdateTemplateXmlTestData.json"))
        entityData = Helpers.toMapAny(Json.parse(entityDataSource)) ?: linkedMapOf()
      } catch (e: Exception) {
        throw AssertionError("failed to read update_template_xml test data: " + e.message, e)
      }

      val options = linkedMapOf<String, Any?>()
      options["entity"] = entityData["existing"]

      var client = BluefinTecsMerchantServicesSDK.testSDK(options, extra)

      // Generate idmap via transform, matching TS pattern.
      val idnames = mutableListOf<Any?>()
      idnames.add("update_template_xml01")
      idnames.add("update_template_xml02")
      idnames.add("update_template_xml03")
      val idmap = Struct.transform(idnames, Json.parse(
          "{\"`\$PACK`\": [\"\", {" +
          "\"`\$KEY`\": \"`\$COPY`\"," +
          "\"`\$VAL`\": [\"`\$FORMAT`\", \"upper\", \"`\$COPY`\"]" +
          "}]}"))

      // Detect ENTID env override before envOverride consumes it.
      val entidEnvRaw = RunnerSupport.getenv("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_UPDATE_TEMPLATE_XML_ENTID")
      val idmapOverridden = entidEnvRaw != null && entidEnvRaw.trim().startsWith("{")

      val envm = linkedMapOf<String, Any?>()
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_UPDATE_TEMPLATE_XML_ENTID"] = idmap
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"] = "FALSE"
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN"] = "FALSE"
      envm["BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"] = "NONE"
      val env = RunnerSupport.envOverride(envm)

      var idmapResolved = Helpers.toMapAny(env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_UPDATE_TEMPLATE_XML_ENTID"])
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
