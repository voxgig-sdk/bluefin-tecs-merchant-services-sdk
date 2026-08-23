// Generated basic-flow test for the get_template_xml entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped GetTemplateXmlTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object GetTemplateXmlEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("get_template_xml.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.getTemplateXml(null)
      rep.check("get_template_xml.instance", ent != null, "expected non-null get_template_xml entity")
    }

    rep.scope("get_template_xml.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/get_template_xml/GetTemplateXmlTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("get_template_xml01", "GET_TEMPLATE_XML01")
      idmap.put("get_template_xml02", "GET_TEMPLATE_XML02")
      idmap.put("get_template_xml03", "GET_TEMPLATE_XML03")
      val now = System.currentTimeMillis()

      // CREATE
      val getTemplateXmlRef01Ent = client.getTemplateXml(null)
      var getTemplateXmlRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.get_template_xml"), "get_template_xml_ref01"))
      val getTemplateXmlRef01DataResult = getTemplateXmlRef01Ent.create(getTemplateXmlRef01Data, null)
      getTemplateXmlRef01Data = Helpers.toMapAny(getTemplateXmlRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("get_template_xml.create.map", getTemplateXmlRef01Data != null, "expected create result to be a map")
    }
  }
}
