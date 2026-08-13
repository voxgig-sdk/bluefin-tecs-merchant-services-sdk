// Generated basic-flow test for the move_tid entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped MoveTidTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object MoveTidEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("move_tid.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.moveTid(null)
      rep.check("move_tid.instance", ent != null, "expected non-null move_tid entity")
    }

    rep.scope("move_tid.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/move_tid/MoveTidTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("move_tid01", "MOVE_TID01")
      idmap.put("move_tid02", "MOVE_TID02")
      idmap.put("move_tid03", "MOVE_TID03")
      val now = System.currentTimeMillis()

      // CREATE
      val moveTidRef01Ent = client.moveTid(null)
      var moveTidRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.move_tid"), "move_tid_ref01"))
      val moveTidRef01DataResult = moveTidRef01Ent.create(moveTidRef01Data, null)
      moveTidRef01Data = Helpers.toMapAny(moveTidRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("move_tid.create.map", moveTidRef01Data != null, "expected create result to be a map")
    }
  }
}
