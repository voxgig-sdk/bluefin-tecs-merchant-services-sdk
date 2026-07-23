// mandator_clearing_export entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class MandatorClearingExportEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.MandatorClearingExport()
    XCTAssertEqual(ent.getName(), "mandator_clearing_export")
  }
}
