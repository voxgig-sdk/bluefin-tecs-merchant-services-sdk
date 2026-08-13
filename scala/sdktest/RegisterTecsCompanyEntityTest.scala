// Generated basic-flow test for the register_tecs_company entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped RegisterTecsCompanyTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object RegisterTecsCompanyEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("register_tecs_company.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.registerTecsCompany(null)
      rep.check("register_tecs_company.instance", ent != null, "expected non-null register_tecs_company entity")
    }

    rep.scope("register_tecs_company.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/register_tecs_company/RegisterTecsCompanyTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("register_tecs_company01", "REGISTER_TECS_COMPANY01")
      idmap.put("register_tecs_company02", "REGISTER_TECS_COMPANY02")
      idmap.put("register_tecs_company03", "REGISTER_TECS_COMPANY03")
      val now = System.currentTimeMillis()

      // CREATE
      val registerTecsCompanyRef01Ent = client.registerTecsCompany(null)
      var registerTecsCompanyRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.register_tecs_company"), "register_tecs_company_ref01"))
      val registerTecsCompanyRef01DataResult = registerTecsCompanyRef01Ent.create(registerTecsCompanyRef01Data, null)
      registerTecsCompanyRef01Data = Helpers.toMapAny(registerTecsCompanyRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("register_tecs_company.create.map", registerTecsCompanyRef01Data != null, "expected create result to be a map")
    }
  }
}
