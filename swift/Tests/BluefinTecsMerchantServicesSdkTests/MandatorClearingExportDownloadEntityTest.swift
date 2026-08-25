// mandator_clearing_export_download entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class MandatorClearingExportDownloadEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.MandatorClearingExportDownload()
    XCTAssertEqual(ent.getName(), "mandator_clearing_export_download")
  }
}
