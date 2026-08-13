// Generated basic-flow test for the reactivate_terminal entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped ReactivateTerminalTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object ReactivateTerminalEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("reactivate_terminal.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.reactivateTerminal(null)
      rep.check("reactivate_terminal.instance", ent != null, "expected non-null reactivate_terminal entity")
    }

    rep.scope("reactivate_terminal.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/reactivate_terminal/ReactivateTerminalTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("reactivate_terminal01", "REACTIVATE_TERMINAL01")
      idmap.put("reactivate_terminal02", "REACTIVATE_TERMINAL02")
      idmap.put("reactivate_terminal03", "REACTIVATE_TERMINAL03")
      val now = System.currentTimeMillis()

      // CREATE
      val reactivateTerminalRef01Ent = client.reactivateTerminal(null)
      var reactivateTerminalRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.reactivate_terminal"), "reactivate_terminal_ref01"))
      val reactivateTerminalRef01DataResult = reactivateTerminalRef01Ent.create(reactivateTerminalRef01Data, null)
      reactivateTerminalRef01Data = Helpers.toMapAny(reactivateTerminalRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("reactivate_terminal.create.map", reactivateTerminalRef01Data != null, "expected create result to be a map")
    }
  }
}
