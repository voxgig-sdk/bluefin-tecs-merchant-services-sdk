// Generated basic-flow test for the list_terminal entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped ListTerminalTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object ListTerminalEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("list_terminal.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.listTerminal(null)
      rep.check("list_terminal.instance", ent != null, "expected non-null list_terminal entity")
    }

    rep.scope("list_terminal.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/list_terminal/ListTerminalTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("list_terminal01", "LIST_TERMINAL01")
      idmap.put("list_terminal02", "LIST_TERMINAL02")
      idmap.put("list_terminal03", "LIST_TERMINAL03")
      val now = System.currentTimeMillis()

      // CREATE
      val listTerminalRef01Ent = client.listTerminal(null)
      var listTerminalRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.list_terminal"), "list_terminal_ref01"))
      val listTerminalRef01DataResult = listTerminalRef01Ent.create(listTerminalRef01Data, null)
      listTerminalRef01Data = Helpers.toMapAny(listTerminalRef01DataResult)
      rep.check("list_terminal.create.map", listTerminalRef01Data != null, "expected create result to be a map")
    }
  }
}
