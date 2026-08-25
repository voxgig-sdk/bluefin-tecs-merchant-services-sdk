// update_template_xml entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class UpdateTemplateXmlEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.UpdateTemplateXml()
    XCTAssertEqual(ent.getName(), "update_template_xml")
  }
}
