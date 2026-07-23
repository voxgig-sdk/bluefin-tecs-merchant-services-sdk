// digital_services_api entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class DigitalServicesApiEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.DigitalServicesApi()
    XCTAssertEqual(ent.getName(), "digital_services_api")
  }
}
