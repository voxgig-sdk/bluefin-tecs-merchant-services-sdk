// transaction_history entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class TransactionHistoryEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.TransactionHistory()
    XCTAssertEqual(ent.getName(), "transaction_history")
  }
}
