// Generated basic-flow test for the mandator_clearing_export entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped MandatorClearingExportTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object MandatorClearingExportEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("mandator_clearing_export.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.mandatorClearingExport(null)
      rep.check("mandator_clearing_export.instance", ent != null, "expected non-null mandator_clearing_export entity")
    }

    rep.scope("mandator_clearing_export.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/mandator_clearing_export/MandatorClearingExportTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("mandator_clearing_export01", "MANDATOR_CLEARING_EXPORT01")
      idmap.put("mandator_clearing_export02", "MANDATOR_CLEARING_EXPORT02")
      idmap.put("mandator_clearing_export03", "MANDATOR_CLEARING_EXPORT03")
      val now = System.currentTimeMillis()

      // CREATE
      val mandatorClearingExportRef01Ent = client.mandatorClearingExport(null)
      var mandatorClearingExportRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.mandator_clearing_export"), "mandator_clearing_export_ref01"))
      val mandatorClearingExportRef01DataResult = mandatorClearingExportRef01Ent.create(mandatorClearingExportRef01Data, null)
      mandatorClearingExportRef01Data = Helpers.toMapAny(mandatorClearingExportRef01DataResult)
      rep.check("mandator_clearing_export.create.map", mandatorClearingExportRef01Data != null, "expected create result to be a map")
    }
  }
}
