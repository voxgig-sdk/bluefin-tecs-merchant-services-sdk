// Generated instance test for the enable_acquiring entity.

#include "ctest.h"

int main(void) {
  BluefinTecsMerchantServicesSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsmerchantservices_enable_acquiring(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "enable_acquiring", "entity get_name");

  TEST_SUMMARY("enable_acquiring_entity");
}
