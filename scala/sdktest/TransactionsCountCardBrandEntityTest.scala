// Generated basic-flow test for the transactions_count_card_brand entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped TransactionsCountCardBrandTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object TransactionsCountCardBrandEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("transactions_count_card_brand.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.transactionsCountCardBrand(null)
      rep.check("transactions_count_card_brand.instance", ent != null, "expected non-null transactions_count_card_brand entity")
    }

    rep.scope("transactions_count_card_brand.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/transactions_count_card_brand/TransactionsCountCardBrandTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("transactions_count_card_brand01", "TRANSACTIONS_COUNT_CARD_BRAND01")
      idmap.put("transactions_count_card_brand02", "TRANSACTIONS_COUNT_CARD_BRAND02")
      idmap.put("transactions_count_card_brand03", "TRANSACTIONS_COUNT_CARD_BRAND03")
      val now = System.currentTimeMillis()

      // CREATE
      val transactionsCountCardBrandRef01Ent = client.transactionsCountCardBrand(null)
      var transactionsCountCardBrandRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.transactions_count_card_brand"), "transactions_count_card_brand_ref01"))
      val transactionsCountCardBrandRef01DataResult = transactionsCountCardBrandRef01Ent.create(transactionsCountCardBrandRef01Data, null)
      transactionsCountCardBrandRef01Data = Helpers.toMapAny(transactionsCountCardBrandRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("transactions_count_card_brand.create.map", transactionsCountCardBrandRef01Data != null, "expected create result to be a map")
    }
  }
}
