// Generated basic-flow test for the emv_data entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped EmvDataTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object EmvDataEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("emv_data.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.emvData(null)
      rep.check("emv_data.instance", ent != null, "expected non-null emv_data entity")
    }

    rep.scope("emv_data.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/emv_data/EmvDataTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("emv_data01", "EMV_DATA01")
      idmap.put("emv_data02", "EMV_DATA02")
      idmap.put("emv_data03", "EMV_DATA03")
      val now = System.currentTimeMillis()

      // CREATE
      val emvDataRef01Ent = client.emvData(null)
      var emvDataRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.emv_data"), "emv_data_ref01"))
      val emvDataRef01DataResult = emvDataRef01Ent.create(emvDataRef01Data, null)
      emvDataRef01Data = Helpers.toMapAny(emvDataRef01DataResult)
      rep.check("emv_data.create.map", emvDataRef01Data != null, "expected create result to be a map")
    }
  }
}
