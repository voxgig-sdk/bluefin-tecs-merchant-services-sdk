// ec_data_ecom entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class EcDataEcomEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.EcDataEcom()
    XCTAssertEqual(ent.getName(), "ec_data_ecom")
  }
}
