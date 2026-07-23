// reactivate_terminal entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class ReactivateTerminalEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.ReactivateTerminal()
    XCTAssertEqual(ent.getName(), "reactivate_terminal")
  }
}
