// Generated basic-flow test for the pre_auth_transaction_completion entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped PreAuthTransactionCompletionTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object PreAuthTransactionCompletionEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("pre_auth_transaction_completion.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.preAuthTransactionCompletion(null)
      rep.check("pre_auth_transaction_completion.instance", ent != null, "expected non-null pre_auth_transaction_completion entity")
    }

    rep.scope("pre_auth_transaction_completion.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/pre_auth_transaction_completion/PreAuthTransactionCompletionTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("pre_auth_transaction_completion01", "PRE_AUTH_TRANSACTION_COMPLETION01")
      idmap.put("pre_auth_transaction_completion02", "PRE_AUTH_TRANSACTION_COMPLETION02")
      idmap.put("pre_auth_transaction_completion03", "PRE_AUTH_TRANSACTION_COMPLETION03")
      val now = System.currentTimeMillis()

      // CREATE
      val preAuthTransactionCompletionRef01Ent = client.preAuthTransactionCompletion(null)
      var preAuthTransactionCompletionRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.pre_auth_transaction_completion"), "pre_auth_transaction_completion_ref01"))
      val preAuthTransactionCompletionRef01DataResult = preAuthTransactionCompletionRef01Ent.create(preAuthTransactionCompletionRef01Data, null)
      preAuthTransactionCompletionRef01Data = Helpers.toMapAny(preAuthTransactionCompletionRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("pre_auth_transaction_completion.create.map", preAuthTransactionCompletionRef01Data != null, "expected create result to be a map")
    }
  }
}
