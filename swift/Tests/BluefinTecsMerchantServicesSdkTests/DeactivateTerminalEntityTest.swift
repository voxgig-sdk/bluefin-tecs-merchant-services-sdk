// deactivate_terminal entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class DeactivateTerminalEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.DeactivateTerminal()
    XCTAssertEqual(ent.getName(), "deactivate_terminal")
  }
}
