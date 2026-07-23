package JAVAPACKAGE.sdktest;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;

import JAVAPACKAGE.core.BluefinTecsMerchantServicesSDK;

public class ExistsTest {

  @Test
  public void testMode() {
    BluefinTecsMerchantServicesSDK testsdk = BluefinTecsMerchantServicesSDK.testSDK();
    assertNotNull(testsdk, "expected non-nil SDK");
  }
}
