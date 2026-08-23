// Generated basic-flow test for the deactivate_terminal entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped DeactivateTerminalTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object DeactivateTerminalEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("deactivate_terminal.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.deactivateTerminal(null)
      rep.check("deactivate_terminal.instance", ent != null, "expected non-null deactivate_terminal entity")
    }

    rep.scope("deactivate_terminal.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/deactivate_terminal/DeactivateTerminalTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("deactivate_terminal01", "DEACTIVATE_TERMINAL01")
      idmap.put("deactivate_terminal02", "DEACTIVATE_TERMINAL02")
      idmap.put("deactivate_terminal03", "DEACTIVATE_TERMINAL03")
      val now = System.currentTimeMillis()

      // CREATE
      val deactivateTerminalRef01Ent = client.deactivateTerminal(null)
      var deactivateTerminalRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.deactivate_terminal"), "deactivate_terminal_ref01"))
      val deactivateTerminalRef01DataResult = deactivateTerminalRef01Ent.create(deactivateTerminalRef01Data, null)
      deactivateTerminalRef01Data = Helpers.toMapAny(deactivateTerminalRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("deactivate_terminal.create.map", deactivateTerminalRef01Data != null, "expected create result to be a map")
    }
  }
}
