package voxgig.bluefintecsmerchantservicessdk.sdktest

import org.junit.jupiter.api.Assertions.assertNotNull
import org.junit.jupiter.api.Test

import voxgig.bluefintecsmerchantservicessdk.core.BluefinTecsMerchantServicesSDK

class ExistsTest {

  @Test
  fun testMode() {
    val testsdk = BluefinTecsMerchantServicesSDK.testSDK()
    assertNotNull(testsdk, "expected non-nil SDK")
  }
}
