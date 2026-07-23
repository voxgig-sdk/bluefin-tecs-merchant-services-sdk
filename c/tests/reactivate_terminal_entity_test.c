// Generated instance test for the reactivate_terminal entity.

#include "ctest.h"

int main(void) {
  BluefinTecsMerchantServicesSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsmerchantservices_reactivate_terminal(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "reactivate_terminal", "entity get_name");

  TEST_SUMMARY("reactivate_terminal_entity");
}
