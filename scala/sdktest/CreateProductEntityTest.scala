// Generated basic-flow test for the create_product entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped CreateProductTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object CreateProductEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("create_product.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.createProduct(null)
      rep.check("create_product.instance", ent != null, "expected non-null create_product entity")
    }

    rep.scope("create_product.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/create_product/CreateProductTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("create_product01", "CREATE_PRODUCT01")
      idmap.put("create_product02", "CREATE_PRODUCT02")
      idmap.put("create_product03", "CREATE_PRODUCT03")
      val now = System.currentTimeMillis()

      // CREATE
      val createProductRef01Ent = client.createProduct(null)
      var createProductRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.create_product"), "create_product_ref01"))
      val createProductRef01DataResult = createProductRef01Ent.create(createProductRef01Data, null)
      createProductRef01Data = Helpers.toMapAny(createProductRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("create_product.create.map", createProductRef01Data != null, "expected create result to be a map")
    }
  }
}
