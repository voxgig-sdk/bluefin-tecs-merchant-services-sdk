// Generated basic-flow test for the terminal_id entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped TerminalIdTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object TerminalIdEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("terminal_id.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.terminalId(null)
      rep.check("terminal_id.instance", ent != null, "expected non-null terminal_id entity")
    }

    rep.scope("terminal_id.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/terminal_id/TerminalIdTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("terminal_id01", "TERMINAL_ID01")
      idmap.put("terminal_id02", "TERMINAL_ID02")
      idmap.put("terminal_id03", "TERMINAL_ID03")
      val now = System.currentTimeMillis()

      // CREATE
      val terminalIdRef01Ent = client.terminalId(null)
      var terminalIdRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.terminal_id"), "terminal_id_ref01"))
      val terminalIdRef01DataResult = terminalIdRef01Ent.create(terminalIdRef01Data, null)
      terminalIdRef01Data = Helpers.toMapAny(terminalIdRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("terminal_id.create.map", terminalIdRef01Data != null, "expected create result to be a map")
    }
  }
}
