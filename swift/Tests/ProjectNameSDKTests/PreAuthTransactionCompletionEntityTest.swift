// pre_auth_transaction_completion entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class PreAuthTransactionCompletionEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.PreAuthTransactionCompletion()
    XCTAssertEqual(ent.getName(), "pre_auth_transaction_completion")
  }
}
