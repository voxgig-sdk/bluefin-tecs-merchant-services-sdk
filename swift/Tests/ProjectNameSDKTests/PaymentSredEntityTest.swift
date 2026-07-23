// payment_sred entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class PaymentSredEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.PaymentSred()
    XCTAssertEqual(ent.getName(), "payment_sred")
  }
}
