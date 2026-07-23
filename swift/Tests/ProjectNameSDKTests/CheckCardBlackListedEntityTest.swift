// check_card_black_listed entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class CheckCardBlackListedEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.CheckCardBlackListed()
    XCTAssertEqual(ent.getName(), "check_card_black_listed")
  }
}
