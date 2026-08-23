// Generated basic-flow test for the update_template_xml entity (model-driven;
// mirrors the java TestEntity generator). A dependency-free scala-cli test
// object driven by SdkEntityTestMain. Runs against the in-memory test
// transport seeded with the shipped UpdateTemplateXmlTestData.json fixtures.

import java.util.{ArrayList, LinkedHashMap, List => JList, Map => JMap}

import voxgig.bluefintecsmerchantservicessdk.core.{Helpers, SdkEntity, BluefinTecsMerchantServicesSDK}
import voxgig.bluefintecsmerchantservicessdk.utility.struct.Struct

object UpdateTemplateXmlEntityTest {

  def run(rep: SdkTestReport): Unit = {
    rep.scope("update_template_xml.instance") {
      val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
      val ent = testsdk.updateTemplateXml(null)
      rep.check("update_template_xml.instance", ent != null, "expected non-null update_template_xml entity")
    }

    rep.scope("update_template_xml.basic") {
      val entityData = Helpers.toMapAny(SdkTestSupport.readJson(
          "../.sdk/test/entity/update_template_xml/UpdateTemplateXmlTestData.json"))
      val options = new LinkedHashMap[String, Object]()
      options.put("entity", entityData.get("existing"))
      val client = BluefinTecsMerchantServicesSDK.testSDK(options, null)

      val idmap = new LinkedHashMap[String, Object]()
      idmap.put("update_template_xml01", "UPDATE_TEMPLATE_XML01")
      idmap.put("update_template_xml02", "UPDATE_TEMPLATE_XML02")
      idmap.put("update_template_xml03", "UPDATE_TEMPLATE_XML03")
      val now = System.currentTimeMillis()

      // CREATE
      val updateTemplateXmlRef01Ent = client.updateTemplateXml(null)
      var updateTemplateXmlRef01Data = Helpers.toMapAny(Struct.getprop(
          Struct.getpath(entityData, "new.update_template_xml"), "update_template_xml_ref01"))
      val updateTemplateXmlRef01DataResult = updateTemplateXmlRef01Ent.create(updateTemplateXmlRef01Data, null)
      updateTemplateXmlRef01Data = Helpers.toMapAny(updateTemplateXmlRef01DataResult match { case e: SdkEntity => e.data(); case o => o })
      rep.check("update_template_xml.create.map", updateTemplateXmlRef01Data != null, "expected create result to be a map")
    }
  }
}
