// Generated basic-flow test for the refund_transaction entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped RefundTransactionTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object RefundTransactionEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("refund_transaction.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.refundTransaction(null)
      rep.check("refund_transaction.instance", ent != null, "expected non-null refund_transaction entity")
    }

    rep.scope("refund_transaction.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/refund_transaction/RefundTransactionTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("refund_transaction01", "REFUND_TRANSACTION01")
      idmap.put("refund_transaction02", "REFUND_TRANSACTION02")
      idmap.put("refund_transaction03", "REFUND_TRANSACTION03")
      val now = System.currentTimeMillis()

      // CREATE
      val refundTransactionRef01Ent = client.refundTransaction(null)
      var refundTransactionRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.refund_transaction"), "refund_transaction_ref01"))
      val refundTransactionRef01DataResult = refundTransactionRef01Ent.create(refundTransactionRef01Data, null)
      refundTransactionRef01Data = Helpers.toMapAny(refundTransactionRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("refund_transaction.create.map", refundTransactionRef01Data != null, "expected create result to be a map")
    }
  }
}
