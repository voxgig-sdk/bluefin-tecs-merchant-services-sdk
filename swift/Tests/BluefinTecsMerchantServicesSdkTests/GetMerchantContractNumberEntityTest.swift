// get_merchant_contract_number entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class GetMerchantContractNumberEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.GetMerchantContractNumber()
    XCTAssertEqual(ent.getName(), "get_merchant_contract_number")
  }
}
