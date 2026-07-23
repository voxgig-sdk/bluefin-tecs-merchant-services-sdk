// merchant_portal_services_api entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class MerchantPortalServicesApiEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.MerchantPortalServicesApi()
    XCTAssertEqual(ent.getName(), "merchant_portal_services_api")
  }
}
