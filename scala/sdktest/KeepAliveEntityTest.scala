// Generated basic-flow test for the keep_alive entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped KeepAliveTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object KeepAliveEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("keep_alive.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.keepAlive(null)
      rep.check("keep_alive.instance", ent != null, "expected non-null keep_alive entity")
    }

    rep.scope("keep_alive.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/keep_alive/KeepAliveTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("keep_alive01", "KEEP_ALIVE01")
      idmap.put("keep_alive02", "KEEP_ALIVE02")
      idmap.put("keep_alive03", "KEEP_ALIVE03")
      val now = System.currentTimeMillis()

      // CREATE
      val keepAliveRef01Ent = client.keepAlive(null)
      var keepAliveRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.keep_alive"), "keep_alive_ref01"))
      val keepAliveRef01DataResult = keepAliveRef01Ent.create(keepAliveRef01Data, null)
      keepAliveRef01Data = Helpers.toMapAny(keepAliveRef01DataResult)
      rep.check("keep_alive.create.map", keepAliveRef01Data != null, "expected create result to be a map")
    }
  }
}
