// list_terminal entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class ListTerminalEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.ListTerminal()
    XCTAssertEqual(ent.getName(), "list_terminal")
  }
}
