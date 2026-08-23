// Generated basic-flow test for the merchant_portal_services_api entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped MerchantPortalServicesApiTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object MerchantPortalServicesApiEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("merchant_portal_services_api.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.merchantPortalServicesApi(null)
      rep.check("merchant_portal_services_api.instance", ent != null, "expected non-null merchant_portal_services_api entity")
    }

    rep.scope("merchant_portal_services_api.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/merchant_portal_services_api/MerchantPortalServicesApiTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("merchant_portal_services_api01", "MERCHANT_PORTAL_SERVICES_API01")
      idmap.put("merchant_portal_services_api02", "MERCHANT_PORTAL_SERVICES_API02")
      idmap.put("merchant_portal_services_api03", "MERCHANT_PORTAL_SERVICES_API03")
      val now = System.currentTimeMillis()

      // CREATE
      val merchantPortalServicesApiRef01Ent = client.merchantPortalServicesApi(null)
      var merchantPortalServicesApiRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.merchant_portal_services_api"), "merchant_portal_services_api_ref01"))
      val merchantPortalServicesApiRef01DataResult = merchantPortalServicesApiRef01Ent.create(merchantPortalServicesApiRef01Data, null)
      merchantPortalServicesApiRef01Data = Helpers.toMapAny(merchantPortalServicesApiRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("merchant_portal_services_api.create.map", merchantPortalServicesApiRef01Data != null, "expected create result to be a map")
    }
  }
}
