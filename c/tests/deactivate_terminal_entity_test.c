// Generated instance test for the deactivate_terminal entity.

#include "ctest.h"

int main(void) {
  BluefinTecsMerchantServicesSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsmerchantservices_deactivate_terminal(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "deactivate_terminal", "entity get_name");

  TEST_SUMMARY("deactivate_terminal_entity");
}
