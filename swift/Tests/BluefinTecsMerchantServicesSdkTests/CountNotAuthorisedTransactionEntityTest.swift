// count_not_authorised_transaction entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class CountNotAuthorisedTransactionEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.CountNotAuthorisedTransaction()
    XCTAssertEqual(ent.getName(), "count_not_authorised_transaction")
  }
}
