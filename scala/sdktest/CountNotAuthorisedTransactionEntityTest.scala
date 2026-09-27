// Generated basic-flow test for the count_not_authorised_transaction entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped CountNotAuthorisedTransactionTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object CountNotAuthorisedTransactionEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("count_not_authorised_transaction.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.countNotAuthorisedTransaction(null)
      rep.check("count_not_authorised_transaction.instance", ent != null, "expected non-null count_not_authorised_transaction entity")
    }

    rep.scope("count_not_authorised_transaction.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/count_not_authorised_transaction/CountNotAuthorisedTransactionTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("count_not_authorised_transaction01", "COUNT_NOT_AUTHORISED_TRANSACTION01")
      idmap.put("count_not_authorised_transaction02", "COUNT_NOT_AUTHORISED_TRANSACTION02")
      idmap.put("count_not_authorised_transaction03", "COUNT_NOT_AUTHORISED_TRANSACTION03")
      val now = System.currentTimeMillis()

      // CREATE
      val countNotAuthorisedTransactionRef01Ent = client.countNotAuthorisedTransaction(null)
      var countNotAuthorisedTransactionRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.count_not_authorised_transaction"), "count_not_authorised_transaction_ref01"))
      val countNotAuthorisedTransactionRef01DataResult = countNotAuthorisedTransactionRef01Ent.create(countNotAuthorisedTransactionRef01Data, null)
      countNotAuthorisedTransactionRef01Data = Helpers.toMapAny(countNotAuthorisedTransactionRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("count_not_authorised_transaction.create.map", countNotAuthorisedTransactionRef01Data != null, "expected create result to be a map")
    }
  }
}
