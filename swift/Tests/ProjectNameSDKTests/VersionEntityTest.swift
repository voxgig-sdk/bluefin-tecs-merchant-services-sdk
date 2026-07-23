// version entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class VersionEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.Version()
    XCTAssertEqual(ent.getName(), "version")
  }
}
