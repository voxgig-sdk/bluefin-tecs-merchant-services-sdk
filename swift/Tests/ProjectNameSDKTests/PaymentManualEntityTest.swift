// payment_manual entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class PaymentManualEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.PaymentManual()
    XCTAssertEqual(ent.getName(), "payment_manual")
  }
}
