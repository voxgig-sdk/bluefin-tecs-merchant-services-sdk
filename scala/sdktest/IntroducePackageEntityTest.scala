// Generated basic-flow test for the introduce_package entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped IntroducePackageTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object IntroducePackageEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("introduce_package.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.introducePackage(null)
      rep.check("introduce_package.instance", ent != null, "expected non-null introduce_package entity")
    }

    rep.scope("introduce_package.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/introduce_package/IntroducePackageTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("introduce_package01", "INTRODUCE_PACKAGE01")
      idmap.put("introduce_package02", "INTRODUCE_PACKAGE02")
      idmap.put("introduce_package03", "INTRODUCE_PACKAGE03")
      val now = System.currentTimeMillis()

      // CREATE
      val introducePackageRef01Ent = client.introducePackage(null)
      var introducePackageRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.introduce_package"), "introduce_package_ref01"))
      val introducePackageRef01DataResult = introducePackageRef01Ent.create(introducePackageRef01Data, null)
      introducePackageRef01Data = Helpers.toMapAny(introducePackageRef01DataResult)
      rep.check("introduce_package.create.map", introducePackageRef01Data != null, "expected create result to be a map")
    }
  }
}
