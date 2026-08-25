// create_product entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class CreateProductEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.CreateProduct()
    XCTAssertEqual(ent.getName(), "create_product")
  }
}
