// get_template_xml entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class GetTemplateXmlEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.GetTemplateXml()
    XCTAssertEqual(ent.getName(), "get_template_xml")
  }
}
