// cancel_transaction entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class CancelTransactionEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.CancelTransaction()
    XCTAssertEqual(ent.getName(), "cancel_transaction")
  }
}
