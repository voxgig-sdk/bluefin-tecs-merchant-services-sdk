// Generated instance test for the get_merchant_contract_number entity.

#include "ctest.h"

int main(void) {
  BluefinTecsMerchantServicesSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsmerchantservices_get_merchant_contract_number(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "get_merchant_contract_number", "entity get_name");

  TEST_SUMMARY("get_merchant_contract_number_entity");
}
