// Generated basic-flow test for the payment_manual entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped PaymentManualTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object PaymentManualEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("payment_manual.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.paymentManual(null)
      rep.check("payment_manual.instance", ent != null, "expected non-null payment_manual entity")
    }

    rep.scope("payment_manual.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/payment_manual/PaymentManualTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("payment_manual01", "PAYMENT_MANUAL01")
      idmap.put("payment_manual02", "PAYMENT_MANUAL02")
      idmap.put("payment_manual03", "PAYMENT_MANUAL03")
      val now = System.currentTimeMillis()

      // CREATE
      val paymentManualRef01Ent = client.paymentManual(null)
      var paymentManualRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.payment_manual"), "payment_manual_ref01"))
      val paymentManualRef01DataResult = paymentManualRef01Ent.create(paymentManualRef01Data, null)
      paymentManualRef01Data = Helpers.toMapAny(paymentManualRef01DataResult)
      rep.check("payment_manual.create.map", paymentManualRef01Data != null, "expected create result to be a map")
    }
  }
}
