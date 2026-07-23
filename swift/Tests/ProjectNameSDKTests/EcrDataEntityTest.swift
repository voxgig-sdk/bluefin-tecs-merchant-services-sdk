// ecr_data entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class EcrDataEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.EcrData()
    XCTAssertEqual(ent.getName(), "ecr_data")
  }
}
