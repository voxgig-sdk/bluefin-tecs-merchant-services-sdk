// Generated basic-flow test for the update_merchant entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped UpdateMerchantTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object UpdateMerchantEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("update_merchant.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.updateMerchant(null)
      rep.check("update_merchant.instance", ent != null, "expected non-null update_merchant entity")
    }

    rep.scope("update_merchant.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/update_merchant/UpdateMerchantTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("update_merchant01", "UPDATE_MERCHANT01")
      idmap.put("update_merchant02", "UPDATE_MERCHANT02")
      idmap.put("update_merchant03", "UPDATE_MERCHANT03")
      val now = System.currentTimeMillis()

      // CREATE
      val updateMerchantRef01Ent = client.updateMerchant(null)
      var updateMerchantRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.update_merchant"), "update_merchant_ref01"))
      val updateMerchantRef01DataResult = updateMerchantRef01Ent.create(updateMerchantRef01Data, null)
      updateMerchantRef01Data = Helpers.toMapAny(updateMerchantRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("update_merchant.create.map", updateMerchantRef01Data != null, "expected create result to be a map")
    }
  }
}
