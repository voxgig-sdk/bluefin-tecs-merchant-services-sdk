// Generated instance test for the pre_auth_transaction_completion entity.

#include "ctest.h"

int main(void) {
  BluefinTecsMerchantServicesSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsmerchantservices_pre_auth_transaction_completion(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "pre_auth_transaction_completion", "entity get_name");

  TEST_SUMMARY("pre_auth_transaction_completion_entity");
}
