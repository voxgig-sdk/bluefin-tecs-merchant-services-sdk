// Generated basic-flow test for the ecom_parameter entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped EcomParameterTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object EcomParameterEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("ecom_parameter.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.ecomParameter(null)
      rep.check("ecom_parameter.instance", ent != null, "expected non-null ecom_parameter entity")
    }

    rep.scope("ecom_parameter.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/ecom_parameter/EcomParameterTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("ecom_parameter01", "ECOM_PARAMETER01")
      idmap.put("ecom_parameter02", "ECOM_PARAMETER02")
      idmap.put("ecom_parameter03", "ECOM_PARAMETER03")
      val now = System.currentTimeMillis()

      // CREATE
      val ecomParameterRef01Ent = client.ecomParameter(null)
      var ecomParameterRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.ecom_parameter"), "ecom_parameter_ref01"))
      val ecomParameterRef01DataResult = ecomParameterRef01Ent.create(ecomParameterRef01Data, null)
      ecomParameterRef01Data = Helpers.toMapAny(ecomParameterRef01DataResult)
      rep.check("ecom_parameter.create.map", ecomParameterRef01Data != null, "expected create result to be a map")
    }
  }
}
