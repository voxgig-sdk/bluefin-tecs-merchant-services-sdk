// Generated instance test for the store_terminal_parameter entity.

#include "ctest.h"

int main(void) {
  BluefinTecsMerchantServicesSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsmerchantservices_store_terminal_parameter(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "store_terminal_parameter", "entity get_name");

  TEST_SUMMARY("store_terminal_parameter_entity");
}
