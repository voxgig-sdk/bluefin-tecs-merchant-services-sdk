// Generated basic-flow test for the ecr_data entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped EcrDataTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object EcrDataEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("ecr_data.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.ecrData(null)
      rep.check("ecr_data.instance", ent != null, "expected non-null ecr_data entity")
    }

    rep.scope("ecr_data.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/ecr_data/EcrDataTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("ecr_data01", "ECR_DATA01")
      idmap.put("ecr_data02", "ECR_DATA02")
      idmap.put("ecr_data03", "ECR_DATA03")
      val now = System.currentTimeMillis()

      // CREATE
      val ecrDataRef01Ent = client.ecrData(null)
      var ecrDataRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.ecr_data"), "ecr_data_ref01"))
      val ecrDataRef01DataResult = ecrDataRef01Ent.create(ecrDataRef01Data, null)
      ecrDataRef01Data = Helpers.toMapAny(ecrDataRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("ecr_data.create.map", ecrDataRef01Data != null, "expected create result to be a map")
    }
  }
}
