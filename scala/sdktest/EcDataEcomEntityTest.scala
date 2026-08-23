// Generated basic-flow test for the ec_data_ecom entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped EcDataEcomTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object EcDataEcomEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("ec_data_ecom.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.ecDataEcom(null)
      rep.check("ec_data_ecom.instance", ent != null, "expected non-null ec_data_ecom entity")
    }

    rep.scope("ec_data_ecom.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/ec_data_ecom/EcDataEcomTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("ec_data_ecom01", "EC_DATA_ECOM01")
      idmap.put("ec_data_ecom02", "EC_DATA_ECOM02")
      idmap.put("ec_data_ecom03", "EC_DATA_ECOM03")
      val now = System.currentTimeMillis()

      // CREATE
      val ecDataEcomRef01Ent = client.ecDataEcom(null)
      var ecDataEcomRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.ec_data_ecom"), "ec_data_ecom_ref01"))
      val ecDataEcomRef01DataResult = ecDataEcomRef01Ent.create(ecDataEcomRef01Data, null)
      ecDataEcomRef01Data = Helpers.toMapAny(ecDataEcomRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("ec_data_ecom.create.map", ecDataEcomRef01Data != null, "expected create result to be a map")
    }
  }
}
