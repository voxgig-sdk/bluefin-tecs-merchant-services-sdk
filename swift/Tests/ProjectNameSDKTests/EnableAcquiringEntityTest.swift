// enable_acquiring entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class EnableAcquiringEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.EnableAcquiring()
    XCTAssertEqual(ent.getName(), "enable_acquiring")
  }
}
