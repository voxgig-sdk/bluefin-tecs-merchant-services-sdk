// status_transaction entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class StatusTransactionEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.StatusTransaction()
    XCTAssertEqual(ent.getName(), "status_transaction")
  }
}
