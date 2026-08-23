// Generated basic-flow test for the introduce_mandator entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped IntroduceMandatorTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object IntroduceMandatorEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("introduce_mandator.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.introduceMandator(null)
      rep.check("introduce_mandator.instance", ent != null, "expected non-null introduce_mandator entity")
    }

    rep.scope("introduce_mandator.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/introduce_mandator/IntroduceMandatorTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("introduce_mandator01", "INTRODUCE_MANDATOR01")
      idmap.put("introduce_mandator02", "INTRODUCE_MANDATOR02")
      idmap.put("introduce_mandator03", "INTRODUCE_MANDATOR03")
      val now = System.currentTimeMillis()

      // CREATE
      val introduceMandatorRef01Ent = client.introduceMandator(null)
      var introduceMandatorRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.introduce_mandator"), "introduce_mandator_ref01"))
      val introduceMandatorRef01DataResult = introduceMandatorRef01Ent.create(introduceMandatorRef01Data, null)
      introduceMandatorRef01Data = Helpers.toMapAny(introduceMandatorRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("introduce_mandator.create.map", introduceMandatorRef01Data != null, "expected create result to be a map")
    }
  }
}
