// register_tecs_company entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class RegisterTecsCompanyEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.RegisterTecsCompany()
    XCTAssertEqual(ent.getName(), "register_tecs_company")
  }
}
