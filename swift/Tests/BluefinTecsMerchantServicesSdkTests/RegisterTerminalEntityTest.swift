// register_terminal entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class RegisterTerminalEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.RegisterTerminal()
    XCTAssertEqual(ent.getName(), "register_terminal")
  }
}
