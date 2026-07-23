// transactions_turnover entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class TransactionsTurnoverEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.TransactionsTurnover()
    XCTAssertEqual(ent.getName(), "transactions_turnover")
  }
}
