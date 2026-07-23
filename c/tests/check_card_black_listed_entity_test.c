// Generated instance test for the check_card_black_listed entity.

#include "ctest.h"

int main(void) {
  BluefinTecsMerchantServicesSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsmerchantservices_check_card_black_listed(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "check_card_black_listed", "entity get_name");

  TEST_SUMMARY("check_card_black_listed_entity");
}
