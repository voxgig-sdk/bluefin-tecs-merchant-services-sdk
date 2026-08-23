// Generated basic-flow test for the transactions_turnover entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped TransactionsTurnoverTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object TransactionsTurnoverEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("transactions_turnover.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.transactionsTurnover(null)
      rep.check("transactions_turnover.instance", ent != null, "expected non-null transactions_turnover entity")
    }

    rep.scope("transactions_turnover.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/transactions_turnover/TransactionsTurnoverTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("transactions_turnover01", "TRANSACTIONS_TURNOVER01")
      idmap.put("transactions_turnover02", "TRANSACTIONS_TURNOVER02")
      idmap.put("transactions_turnover03", "TRANSACTIONS_TURNOVER03")
      val now = System.currentTimeMillis()

      // CREATE
      val transactionsTurnoverRef01Ent = client.transactionsTurnover(null)
      var transactionsTurnoverRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.transactions_turnover"), "transactions_turnover_ref01"))
      val transactionsTurnoverRef01DataResult = transactionsTurnoverRef01Ent.create(transactionsTurnoverRef01Data, null)
      transactionsTurnoverRef01Data = Helpers.toMapAny(transactionsTurnoverRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("transactions_turnover.create.map", transactionsTurnoverRef01Data != null, "expected create result to be a map")
    }
  }
}
