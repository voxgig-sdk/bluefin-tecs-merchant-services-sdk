// ecom_parameter entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class EcomParameterEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.EcomParameter()
    XCTAssertEqual(ent.getName(), "ecom_parameter")
  }
}
