// transactions_count entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class TransactionsCountEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.TransactionsCount()
    XCTAssertEqual(ent.getName(), "transactions_count")
  }
}
