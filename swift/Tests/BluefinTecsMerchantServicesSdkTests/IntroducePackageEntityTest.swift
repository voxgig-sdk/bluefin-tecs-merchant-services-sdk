// introduce_package entity test (generated from the API model).

import XCTest

@testable import BluefinTecsMerchantServicesSdk

final class IntroducePackageEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsMerchantServicesSDK.testSDK(nil, nil)
    let ent = sdk.IntroducePackage()
    XCTAssertEqual(ent.getName(), "introduce_package")
  }
}
