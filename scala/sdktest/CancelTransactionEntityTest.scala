// Generated basic-flow test for the cancel_transaction entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped CancelTransactionTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object CancelTransactionEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("cancel_transaction.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.cancelTransaction(null)
      rep.check("cancel_transaction.instance", ent != null, "expected non-null cancel_transaction entity")
    }

    rep.scope("cancel_transaction.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/cancel_transaction/CancelTransactionTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("cancel_transaction01", "CANCEL_TRANSACTION01")
      idmap.put("cancel_transaction02", "CANCEL_TRANSACTION02")
      idmap.put("cancel_transaction03", "CANCEL_TRANSACTION03")
      val now = System.currentTimeMillis()

      // CREATE
      val cancelTransactionRef01Ent = client.cancelTransaction(null)
      var cancelTransactionRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.cancel_transaction"), "cancel_transaction_ref01"))
      val cancelTransactionRef01DataResult = cancelTransactionRef01Ent.create(cancelTransactionRef01Data, null)
      cancelTransactionRef01Data = Helpers.toMapAny(cancelTransactionRef01DataResult)
      rep.check("cancel_transaction.create.map", cancelTransactionRef01Data != null, "expected create result to be a map")
    }
  }
}
