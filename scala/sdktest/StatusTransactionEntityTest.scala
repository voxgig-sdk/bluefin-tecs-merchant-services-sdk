// Generated basic-flow test for the status_transaction entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped StatusTransactionTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object StatusTransactionEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("status_transaction.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.statusTransaction(null)
      rep.check("status_transaction.instance", ent != null, "expected non-null status_transaction entity")
    }

    rep.scope("status_transaction.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/status_transaction/StatusTransactionTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("status_transaction01", "STATUS_TRANSACTION01")
      idmap.put("status_transaction02", "STATUS_TRANSACTION02")
      idmap.put("status_transaction03", "STATUS_TRANSACTION03")
      val now = System.currentTimeMillis()

      // CREATE
      val statusTransactionRef01Ent = client.statusTransaction(null)
      var statusTransactionRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.status_transaction"), "status_transaction_ref01"))
      val statusTransactionRef01DataResult = statusTransactionRef01Ent.create(statusTransactionRef01Data, null)
      statusTransactionRef01Data = Helpers.toMapAny(statusTransactionRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("status_transaction.create.map", statusTransactionRef01Data != null, "expected create result to be a map")
    }
  }
}
