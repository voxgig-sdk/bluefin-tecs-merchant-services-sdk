// Generated basic-flow test for the transaction_history entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped TransactionHistoryTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object TransactionHistoryEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("transaction_history.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.transactionHistory(null)
      rep.check("transaction_history.instance", ent != null, "expected non-null transaction_history entity")
    }

    rep.scope("transaction_history.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/transaction_history/TransactionHistoryTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("transaction_history01", "TRANSACTION_HISTORY01")
      idmap.put("transaction_history02", "TRANSACTION_HISTORY02")
      idmap.put("transaction_history03", "TRANSACTION_HISTORY03")
      val now = System.currentTimeMillis()

      // CREATE
      val transactionHistoryRef01Ent = client.transactionHistory(null)
      var transactionHistoryRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.transaction_history"), "transaction_history_ref01"))
      val transactionHistoryRef01DataResult = transactionHistoryRef01Ent.create(transactionHistoryRef01Data, null)
      transactionHistoryRef01Data = Helpers.toMapAny(transactionHistoryRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("transaction_history.create.map", transactionHistoryRef01Data != null, "expected create result to be a map")
    }
  }
}
