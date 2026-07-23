// update_merchant entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class UpdateMerchantEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.UpdateMerchant()
    XCTAssertEqual(ent.getName(), "update_merchant")
  }
}
