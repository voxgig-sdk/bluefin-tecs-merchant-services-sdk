// Generated basic-flow test for the enable_acquiring entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped EnableAcquiringTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object EnableAcquiringEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("enable_acquiring.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.enableAcquiring(null)
      rep.check("enable_acquiring.instance", ent != null, "expected non-null enable_acquiring entity")
    }

    rep.scope("enable_acquiring.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/enable_acquiring/EnableAcquiringTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("enable_acquiring01", "ENABLE_ACQUIRING01")
      idmap.put("enable_acquiring02", "ENABLE_ACQUIRING02")
      idmap.put("enable_acquiring03", "ENABLE_ACQUIRING03")
      val now = System.currentTimeMillis()

      // CREATE
      val enableAcquiringRef01Ent = client.enableAcquiring(null)
      var enableAcquiringRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.enable_acquiring"), "enable_acquiring_ref01"))
      val enableAcquiringRef01DataResult = enableAcquiringRef01Ent.create(enableAcquiringRef01Data, null)
      enableAcquiringRef01Data = Helpers.toMapAny(enableAcquiringRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("enable_acquiring.create.map", enableAcquiringRef01Data != null, "expected create result to be a map")
    }
  }
}
