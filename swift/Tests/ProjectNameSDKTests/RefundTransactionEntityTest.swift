// refund_transaction entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class RefundTransactionEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.RefundTransaction()
    XCTAssertEqual(ent.getName(), "refund_transaction")
  }
}
