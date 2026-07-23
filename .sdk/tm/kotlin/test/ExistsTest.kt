package KOTLINPACKAGE.sdktest

import org.junit.jupiter.api.Assertions.assertNotNull
import org.junit.jupiter.api.Test

import KOTLINPACKAGE.core.BluefinTecsMerchantServicesSDK

class ExistsTest {

  @Test
  fun testMode() {
    val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
    assertNotNull(testsdk, "expected non-nil SDK")
  }
}
