// Generated instance test for the payment_sred entity.

#include "ctest.h"

int main(void) {
  BluefinTecsMerchantServicesSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsmerchantservices_payment_sred(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "payment_sred", "entity get_name");

  TEST_SUMMARY("payment_sred_entity");
}
