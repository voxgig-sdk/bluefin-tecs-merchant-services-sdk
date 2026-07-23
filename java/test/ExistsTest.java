package voxgig.bluefintecsmerchantservicessdk.sdktest;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;

import voxgig.bluefintecsmerchantservicessdk.core.BluefinTecsMerchantServicesSDK;

public class ExistsTest {

  @Test
  public void testMode() {
    BluefinTecsMerchantServicesSDK testsdk = BluefinTecsMerchantServicesSDK.testSDK();
    assertNotNull(testsdk, "expected non-nil SDK");
  }
}
