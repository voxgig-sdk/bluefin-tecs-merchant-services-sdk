// Generated instance test for the count_authorised_transaction entity.

#include "ctest.h"

int main(void) {
  BluefinTecsMerchantServicesSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsmerchantservices_count_authorised_transaction(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "count_authorised_transaction", "entity get_name");

  TEST_SUMMARY("count_authorised_transaction_entity");
}
