// Generated basic-flow test for the mandator_clearing_export_download entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped MandatorClearingExportDownloadTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object MandatorClearingExportDownloadEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("mandator_clearing_export_download.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.mandatorClearingExportDownload(null)
      rep.check("mandator_clearing_export_download.instance", ent != null, "expected non-null mandator_clearing_export_download entity")
    }

    rep.scope("mandator_clearing_export_download.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/mandator_clearing_export_download/MandatorClearingExportDownloadTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("mandator_clearing_export_download01", "MANDATOR_CLEARING_EXPORT_DOWNLOAD01")
      idmap.put("mandator_clearing_export_download02", "MANDATOR_CLEARING_EXPORT_DOWNLOAD02")
      idmap.put("mandator_clearing_export_download03", "MANDATOR_CLEARING_EXPORT_DOWNLOAD03")
      val now = System.currentTimeMillis()

      // CREATE
      val mandatorClearingExportDownloadRef01Ent = client.mandatorClearingExportDownload(null)
      var mandatorClearingExportDownloadRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.mandator_clearing_export_download"), "mandator_clearing_export_download_ref01"))
      val mandatorClearingExportDownloadRef01DataResult = mandatorClearingExportDownloadRef01Ent.create(mandatorClearingExportDownloadRef01Data, null)
      mandatorClearingExportDownloadRef01Data = Helpers.toMapAny(mandatorClearingExportDownloadRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("mandator_clearing_export_download.create.map", mandatorClearingExportDownloadRef01Data != null, "expected create result to be a map")
      rep.check("mandator_clearing_export_download.create.id", mandatorClearingExportDownloadRef01Data != null && mandatorClearingExportDownloadRef01Data.get("id") != null, "expected created entity to have an id")

      // LOAD
      val mandatorClearingExportDownloadRef01MatchDt0 = new LinkedHashMap[String, Object]()
      mandatorClearingExportDownloadRef01MatchDt0.put("id", mandatorClearingExportDownloadRef01Data.get("id"))
      val mandatorClearingExportDownloadRef01DataDt0Loaded = mandatorClearingExportDownloadRef01Ent.load(mandatorClearingExportDownloadRef01MatchDt0, null)
      val mandatorClearingExportDownloadRef01DataDt0LoadResult = Helpers.toMapAny(mandatorClearingExportDownloadRef01DataDt0Loaded match { case e: SdkEntity => e.data(); case o => o })
      rep.check("mandator_clearing_export_download.load.map", mandatorClearingExportDownloadRef01DataDt0LoadResult != null, "expected load result to be a map")
      rep.eq("mandator_clearing_export_download.load.id", mandatorClearingExportDownloadRef01Data.get("id"), mandatorClearingExportDownloadRef01DataDt0LoadResult.get("id"))
    }
  }
}
