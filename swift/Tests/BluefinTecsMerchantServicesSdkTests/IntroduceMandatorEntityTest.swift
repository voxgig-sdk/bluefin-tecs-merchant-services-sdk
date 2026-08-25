// introduce_mandator entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class IntroduceMandatorEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.IntroduceMandator()
    XCTAssertEqual(ent.getName(), "introduce_mandator")
  }
}
