// mandator_clearing_export_summary entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class MandatorClearingExportSummaryEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.MandatorClearingExportSummary()
    XCTAssertEqual(ent.getName(), "mandator_clearing_export_summary")
  }
}
