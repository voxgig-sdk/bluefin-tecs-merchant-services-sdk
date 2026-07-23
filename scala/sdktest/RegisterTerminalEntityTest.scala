// Generated basic-flow test for the register_terminal entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped RegisterTerminalTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object RegisterTerminalEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("register_terminal.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.registerTerminal(null)
      rep.check("register_terminal.instance", ent != null, "expected non-null register_terminal entity")
    }

    rep.scope("register_terminal.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/register_terminal/RegisterTerminalTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("register_terminal01", "REGISTER_TERMINAL01")
      idmap.put("register_terminal02", "REGISTER_TERMINAL02")
      idmap.put("register_terminal03", "REGISTER_TERMINAL03")
      val now = System.currentTimeMillis()

      // CREATE
      val registerTerminalRef01Ent = client.registerTerminal(null)
      var registerTerminalRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.register_terminal"), "register_terminal_ref01"))
      val registerTerminalRef01DataResult = registerTerminalRef01Ent.create(registerTerminalRef01Data, null)
      registerTerminalRef01Data = Helpers.toMapAny(registerTerminalRef01DataResult)
      rep.check("register_terminal.create.map", registerTerminalRef01Data != null, "expected create result to be a map")
    }
  }
}
