// store_terminal_parameter entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class StoreTerminalParameterEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.StoreTerminalParameter()
    XCTAssertEqual(ent.getName(), "store_terminal_parameter")
  }
}
