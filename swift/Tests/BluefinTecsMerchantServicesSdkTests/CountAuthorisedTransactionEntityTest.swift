// count_authorised_transaction entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class CountAuthorisedTransactionEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.CountAuthorisedTransaction()
    XCTAssertEqual(ent.getName(), "count_authorised_transaction")
  }
}
