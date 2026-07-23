// BluefinTecsMerchantServices SDK exists test.

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class ExistsTest: XCTestCase {
  func testMode() {
    let testsdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    XCTAssertEqual(testsdk.mode, "test")
  }
}
