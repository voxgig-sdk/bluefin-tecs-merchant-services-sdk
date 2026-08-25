// transactions_count_card_brand entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class TransactionsCountCardBrandEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.TransactionsCountCardBrand()
    XCTAssertEqual(ent.getName(), "transactions_count_card_brand")
  }
}
