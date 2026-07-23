// Generated instance test for the merchant_portal_services_api entity.

#include "ctest.h"

int main(void) {
  BluefinTecsMerchantServicesSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsmerchantservices_merchant_portal_services_api(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "merchant_portal_services_api", "entity get_name");

  TEST_SUMMARY("merchant_portal_services_api_entity");
}
