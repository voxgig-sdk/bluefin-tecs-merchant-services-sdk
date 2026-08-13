// Generated basic-flow test for the store_terminal_parameter entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped StoreTerminalParameterTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object StoreTerminalParameterEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("store_terminal_parameter.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.storeTerminalParameter(null)
      rep.check("store_terminal_parameter.instance", ent != null, "expected non-null store_terminal_parameter entity")
    }

    rep.scope("store_terminal_parameter.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/store_terminal_parameter/StoreTerminalParameterTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("store_terminal_parameter01", "STORE_TERMINAL_PARAMETER01")
      idmap.put("store_terminal_parameter02", "STORE_TERMINAL_PARAMETER02")
      idmap.put("store_terminal_parameter03", "STORE_TERMINAL_PARAMETER03")
      val now = System.currentTimeMillis()

      // CREATE
      val storeTerminalParameterRef01Ent = client.storeTerminalParameter(null)
      var storeTerminalParameterRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.store_terminal_parameter"), "store_terminal_parameter_ref01"))
      val storeTerminalParameterRef01DataResult = storeTerminalParameterRef01Ent.create(storeTerminalParameterRef01Data, null)
      storeTerminalParameterRef01Data = Helpers.toMapAny(storeTerminalParameterRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("store_terminal_parameter.create.map", storeTerminalParameterRef01Data != null, "expected create result to be a map")
    }
  }
}
