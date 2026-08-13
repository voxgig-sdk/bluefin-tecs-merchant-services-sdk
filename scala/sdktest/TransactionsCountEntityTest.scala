// Generated basic-flow test for the transactions_count entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped TransactionsCountTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object TransactionsCountEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("transactions_count.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.transactionsCount(null)
      rep.check("transactions_count.instance", ent != null, "expected non-null transactions_count entity")
    }

    rep.scope("transactions_count.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/transactions_count/TransactionsCountTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("transactions_count01", "TRANSACTIONS_COUNT01")
      idmap.put("transactions_count02", "TRANSACTIONS_COUNT02")
      idmap.put("transactions_count03", "TRANSACTIONS_COUNT03")
      val now = System.currentTimeMillis()

      // CREATE
      val transactionsCountRef01Ent = client.transactionsCount(null)
      var transactionsCountRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.transactions_count"), "transactions_count_ref01"))
      val transactionsCountRef01DataResult = transactionsCountRef01Ent.create(transactionsCountRef01Data, null)
      transactionsCountRef01Data = Helpers.toMapAny(transactionsCountRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("transactions_count.create.map", transactionsCountRef01Data != null, "expected create result to be a map")
    }
  }
}
