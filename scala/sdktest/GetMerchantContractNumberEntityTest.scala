// Generated basic-flow test for the get_merchant_contract_number entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped GetMerchantContractNumberTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object GetMerchantContractNumberEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("get_merchant_contract_number.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.getMerchantContractNumber(null)
      rep.check("get_merchant_contract_number.instance", ent != null, "expected non-null get_merchant_contract_number entity")
    }

    rep.scope("get_merchant_contract_number.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/get_merchant_contract_number/GetMerchantContractNumberTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("get_merchant_contract_number01", "GET_MERCHANT_CONTRACT_NUMBER01")
      idmap.put("get_merchant_contract_number02", "GET_MERCHANT_CONTRACT_NUMBER02")
      idmap.put("get_merchant_contract_number03", "GET_MERCHANT_CONTRACT_NUMBER03")
      val now = System.currentTimeMillis()

      // CREATE
      val getMerchantContractNumberRef01Ent = client.getMerchantContractNumber(null)
      var getMerchantContractNumberRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.get_merchant_contract_number"), "get_merchant_contract_number_ref01"))
      val getMerchantContractNumberRef01DataResult = getMerchantContractNumberRef01Ent.create(getMerchantContractNumberRef01Data, null)
      getMerchantContractNumberRef01Data = Helpers.toMapAny(getMerchantContractNumberRef01DataResult)
      rep.check("get_merchant_contract_number.create.map", getMerchantContractNumberRef01Data != null, "expected create result to be a map")
    }
  }
}
