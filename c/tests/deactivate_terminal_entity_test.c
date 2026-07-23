// Generated instance test for the deactivate_terminal entity.

#include "ctest.h"

int main(void) {
  BluefinTecsMerchantServicesSDK* sdk = test_sdk(NULL, NULL);
  CHECK(sdk != NULL, "sdk constructed");

  Entity* e = bluefin_tecs_merchant_services_deactivate_terminal(sdk, NULL);
  CHECK(e != NULL, "entity instance");
  CHECK_STR_EQ(e->vt->get_name(e), "deactivate_terminal", "entity get_name");

  // stream(): runs the list op through the full pipeline and returns a List
  // of items. Seed two entities via test mode; with the streaming feature
  // active it yields the feature's incremental items, else it falls back to
  // the materialised items — either way every item is yielded.
  {
    voxgig_value* seed = cmap(1, "entity",
      cmap(1, "deactivate_terminal",
        cmap(2,
          "strm01", cmap(1, "id", v_str("strm01")),
          "strm02", cmap(1, "id", v_str("strm02")))));
    voxgig_value* sdkopts = cmap(1, "feature",
      cmap(1, "streaming", cmap(1, "active", v_bool(true))));

    BluefinTecsMerchantServicesSDK* strsdk = test_sdk(seed, sdkopts);
    Entity* se = bluefin_tecs_merchant_services_deactivate_terminal(strsdk, NULL);
    PNError* serr = NULL;
    voxgig_value* items = deactivate_terminal_stream(se, "list", NULL, NULL, &serr);
    CHECK(serr == NULL, "stream: no error");
    CHECK(v_is_list(items), "stream: returns a list");
    CHECK_INT_EQ((int64_t)voxgig_as_list(items)->len, 2, "stream: yields both items");

    // Fallback: streaming inactive still yields both materialised items.
    BluefinTecsMerchantServicesSDK* plainsdk = test_sdk(seed, NULL);
    Entity* pe = bluefin_tecs_merchant_services_deactivate_terminal(plainsdk, NULL);
    PNError* perr = NULL;
    voxgig_value* pitems = deactivate_terminal_stream(pe, "list", NULL, NULL, &perr);
    CHECK(perr == NULL, "stream fallback: no error");
    CHECK_INT_EQ((int64_t)voxgig_as_list(pitems)->len, 2, "stream fallback: yields both items");
  }

  TEST_SUMMARY("deactivate_terminal_entity");
}
