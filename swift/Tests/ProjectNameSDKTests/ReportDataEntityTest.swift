// report_data entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class ReportDataEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.ReportData()
    XCTAssertEqual(ent.getName(), "report_data")
  }
}
