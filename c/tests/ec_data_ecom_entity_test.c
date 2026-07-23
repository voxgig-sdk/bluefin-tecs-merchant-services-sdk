// Generated instance test for the ec_data_ecom entity.

#include "ctest.h"

int main(void) {
  BluefinTecsMerchantServicesSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsmerchantservices_ec_data_ecom(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "ec_data_ecom", "entity get_name");

  TEST_SUMMARY("ec_data_ecom_entity");
}
