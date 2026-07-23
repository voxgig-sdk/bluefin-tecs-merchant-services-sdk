// Generated basic-flow test for the payment_sred entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped PaymentSredTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object PaymentSredEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("payment_sred.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.paymentSred(null)
      rep.check("payment_sred.instance", ent != null, "expected non-null payment_sred entity")
    }

    rep.scope("payment_sred.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/payment_sred/PaymentSredTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("payment_sred01", "PAYMENT_SRED01")
      idmap.put("payment_sred02", "PAYMENT_SRED02")
      idmap.put("payment_sred03", "PAYMENT_SRED03")
      val now = System.currentTimeMillis()

      // CREATE
      val paymentSredRef01Ent = client.paymentSred(null)
      var paymentSredRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.payment_sred"), "payment_sred_ref01"))
      val paymentSredRef01DataResult = paymentSredRef01Ent.create(paymentSredRef01Data, null)
      paymentSredRef01Data = Helpers.toMapAny(paymentSredRef01DataResult)
      rep.check("payment_sred.create.map", paymentSredRef01Data != null, "expected create result to be a map")
    }
  }
}
