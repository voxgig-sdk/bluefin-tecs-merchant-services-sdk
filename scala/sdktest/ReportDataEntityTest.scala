// Generated basic-flow test for the report_data entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped ReportDataTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object ReportDataEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("report_data.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.reportData(null)
      rep.check("report_data.instance", ent != null, "expected non-null report_data entity")
    }

    rep.scope("report_data.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/report_data/ReportDataTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("report_data01", "REPORT_DATA01")
      idmap.put("report_data02", "REPORT_DATA02")
      idmap.put("report_data03", "REPORT_DATA03")
      val now = System.currentTimeMillis()

      // CREATE
      val reportDataRef01Ent = client.reportData(null)
      var reportDataRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.report_data"), "report_data_ref01"))
      val reportDataRef01DataResult = reportDataRef01Ent.create(reportDataRef01Data, null)
      reportDataRef01Data = Helpers.toMapAny(reportDataRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("report_data.create.map", reportDataRef01Data != null, "expected create result to be a map")
    }
  }
}
