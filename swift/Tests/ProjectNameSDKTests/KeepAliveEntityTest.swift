// keep_alive entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class KeepAliveEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.KeepAlive()
    XCTAssertEqual(ent.getName(), "keep_alive")
  }
}
