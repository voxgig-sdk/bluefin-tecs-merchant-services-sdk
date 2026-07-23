// emv_data entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class EmvDataEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.EmvData()
    XCTAssertEqual(ent.getName(), "emv_data")
  }
}
