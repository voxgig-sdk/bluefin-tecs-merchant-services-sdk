// Generated basic-flow test for the check_card_black_listed entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped CheckCardBlackListedTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object CheckCardBlackListedEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("check_card_black_listed.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.checkCardBlackListed(null)
      rep.check("check_card_black_listed.instance", ent != null, "expected non-null check_card_black_listed entity")
    }

    rep.scope("check_card_black_listed.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/check_card_black_listed/CheckCardBlackListedTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("check_card_black_listed01", "CHECK_CARD_BLACK_LISTED01")
      idmap.put("check_card_black_listed02", "CHECK_CARD_BLACK_LISTED02")
      idmap.put("check_card_black_listed03", "CHECK_CARD_BLACK_LISTED03")
      val now = System.currentTimeMillis()

      // CREATE
      val checkCardBlackListedRef01Ent = client.checkCardBlackListed(null)
      var checkCardBlackListedRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.check_card_black_listed"), "check_card_black_listed_ref01"))
      val checkCardBlackListedRef01DataResult = checkCardBlackListedRef01Ent.create(checkCardBlackListedRef01Data, null)
      checkCardBlackListedRef01Data = Helpers.toMapAny(checkCardBlackListedRef01DataResult)
      rep.check("check_card_black_listed.create.map", checkCardBlackListedRef01Data != null, "expected create result to be a map")
    }
  }
}
