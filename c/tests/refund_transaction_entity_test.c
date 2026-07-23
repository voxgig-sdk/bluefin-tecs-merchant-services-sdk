// Generated instance test for the refund_transaction entity.

#include "ctest.h"

int main(void) {
  BluefinTecsMerchantServicesSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsmerchantservices_refund_transaction(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "refund_transaction", "entity get_name");

  TEST_SUMMARY("refund_transaction_entity");
}
