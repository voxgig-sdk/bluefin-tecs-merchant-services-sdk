// terminal_id entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class TerminalIdEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.TerminalId()
    XCTAssertEqual(ent.getName(), "terminal_id")
  }
}
