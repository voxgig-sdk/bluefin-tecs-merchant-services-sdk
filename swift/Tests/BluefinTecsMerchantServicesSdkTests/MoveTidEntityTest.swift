// move_tid entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class MoveTidEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.MoveTid()
    XCTAssertEqual(ent.getName(), "move_tid")
  }
}
