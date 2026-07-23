// Generated instance test for the mandator_clearing_export_download entity.

#include "ctest.h"

int main(void) {
  BluefinTecsMerchantServicesSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefintecsmerchantservices_mandator_clearing_export_download(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "mandator_clearing_export_download", "entity get_name");

  TEST_SUMMARY("mandator_clearing_export_download_entity");
}
