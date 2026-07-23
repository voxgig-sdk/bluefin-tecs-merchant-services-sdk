// Generated basic-flow test for the mandator_clearing_export_summary entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped MandatorClearingExportSummaryTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object MandatorClearingExportSummaryEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("mandator_clearing_export_summary.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.mandatorClearingExportSummary(null)
      rep.check("mandator_clearing_export_summary.instance", ent != null, "expected non-null mandator_clearing_export_summary entity")
    }

    rep.scope("mandator_clearing_export_summary.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/mandator_clearing_export_summary/MandatorClearingExportSummaryTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("mandator_clearing_export_summary01", "MANDATOR_CLEARING_EXPORT_SUMMARY01")
      idmap.put("mandator_clearing_export_summary02", "MANDATOR_CLEARING_EXPORT_SUMMARY02")
      idmap.put("mandator_clearing_export_summary03", "MANDATOR_CLEARING_EXPORT_SUMMARY03")
      val now = System.currentTimeMillis()

      // CREATE
      val mandatorClearingExportSummaryRef01Ent = client.mandatorClearingExportSummary(null)
      var mandatorClearingExportSummaryRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.mandator_clearing_export_summary"), "mandator_clearing_export_summary_ref01"))
      val mandatorClearingExportSummaryRef01DataResult = mandatorClearingExportSummaryRef01Ent.create(mandatorClearingExportSummaryRef01Data, null)
      mandatorClearingExportSummaryRef01Data = Helpers.toMapAny(mandatorClearingExportSummaryRef01DataResult)
      rep.check("mandator_clearing_export_summary.create.map", mandatorClearingExportSummaryRef01Data != null, "expected create result to be a map")
    }
  }
}
