// Generated basic-flow test for the digital_services_api entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped DigitalServicesApiTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object DigitalServicesApiEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("digital_services_api.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.digitalServicesApi(null)
      rep.check("digital_services_api.instance", ent != null, "expected non-null digital_services_api entity")
    }

    rep.scope("digital_services_api.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/digital_services_api/DigitalServicesApiTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("digital_services_api01", "DIGITAL_SERVICES_API01")
      idmap.put("digital_services_api02", "DIGITAL_SERVICES_API02")
      idmap.put("digital_services_api03", "DIGITAL_SERVICES_API03")
      idmap.put("mandator_clearing_export_download01", "MANDATOR_CLEARING_EXPORT_DOWNLOAD01")
      idmap.put("mandator_clearing_export_download02", "MANDATOR_CLEARING_EXPORT_DOWNLOAD02")
      idmap.put("mandator_clearing_export_download03", "MANDATOR_CLEARING_EXPORT_DOWNLOAD03")
      val now = System.currentTimeMillis()

      // CREATE
      val digitalServicesApiRef01Ent = client.digitalServicesApi(null)
      var digitalServicesApiRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.digital_services_api"), "digital_services_api_ref01"))
      val digitalServicesApiRef01DataResult = digitalServicesApiRef01Ent.create(digitalServicesApiRef01Data, null)
      digitalServicesApiRef01Data = Helpers.toMapAny(digitalServicesApiRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("digital_services_api.create.map", digitalServicesApiRef01Data != null, "expected create result to be a map")

      // LOAD
      val digitalServicesApiRef01MatchDt0 = new LinkedHashMap[String, Object]()
      val digitalServicesApiRef01DataDt0Loaded = digitalServicesApiRef01Ent.load(digitalServicesApiRef01MatchDt0, null)
      rep.check("digital_services_api.load.nonnull", digitalServicesApiRef01DataDt0Loaded != null, "expected load result to be non-null")
    }
  }
}
