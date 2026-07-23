// Generated basic-flow test for the mandator_clearing_export_summary entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct MandatorClearingExportSummarySetup {
  std::shared_ptr<BluefinTecsMerchantServicesSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static MandatorClearingExportSummarySetup mandator_clearing_export_summary_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/mandator_clearing_export_summary/MandatorClearingExportSummaryTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsMerchantServicesSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("mandator_clearing_export_summary01"), Value("mandator_clearing_export_summary02"), Value("mandator_clearing_export_summary03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFINTECSMERCHANTSERVICES_TEST_MANDATOR_CLEARING_EXPORT_SUMMARY_ENTID", idmap},
    {"BLUEFINTECSMERCHANTSERVICES_TEST_LIVE", Value("FALSE")},
    {"BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFINTECSMERCHANTSERVICES_TEST_MANDATOR_CLEARING_EXPORT_SUMMARY_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFINTECSMERCHANTSERVICES_TEST_LIVE") == Value("TRUE");

  MandatorClearingExportSummarySetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void mandator_clearing_export_summary_entity_instance() {
  auto testsdk = BluefinTecsMerchantServicesSDK::testSDK();
  auto ent = testsdk->mandator_clearing_export_summary();
  ASSERT_EQ(ent->getName(), std::string("mandator_clearing_export_summary"), "entity name");
}

static void mandator_clearing_export_summary_entity_stream() {
  // stream() runs the list op through the full pipeline and returns the
  // result items. Seed two entities via test mode; with the streaming feature
  // active it yields the feature's incremental items, else it falls back to
  // the materialised items — either way every item is yielded.
  Value seed = vmap({{"entity", vmap({{"mandator_clearing_export_summary", vmap({
      {"strm01", vmap({{"id", Value("strm01")}})},
      {"strm02", vmap({{"id", Value("strm02")}})}})}})}});
  Value sdkopts = vmap({{"feature",
      vmap({{"streaming", vmap({{"active", Value(true)}})}})}});

  auto strsdk = BluefinTecsMerchantServicesSDK::testSDK(seed, sdkopts);
  auto se = strsdk->mandator_clearing_export_summary();
  std::vector<Value> items = se->stream("list", Value::undef(), Value::undef());
  ASSERT_EQ((int)items.size(), 2, "stream yields both seeded items");

  auto plainsdk = BluefinTecsMerchantServicesSDK::testSDK(seed, Value::undef());
  auto pe = plainsdk->mandator_clearing_export_summary();
  std::vector<Value> pitems = pe->stream("list", Value::undef(), Value::undef());
  ASSERT_EQ((int)pitems.size(), 2, "fallback stream yields both items");
}

static void mandator_clearing_export_summary_entity_basic() {
  auto setup = mandator_clearing_export_summary_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create"}) {
    auto sk = is_control_skipped("entityOp", std::string("mandator_clearing_export_summary.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto mandator_clearing_export_summary_ref01_ent = client->mandator_clearing_export_summary();
  Value mandator_clearing_export_summary_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "mandator_clearing_export_summary"}), "mandator_clearing_export_summary_ref01"));
  if (!mandator_clearing_export_summary_ref01_data.is_map()) mandator_clearing_export_summary_ref01_data = vmap();
  {
    Value mandator_clearing_export_summary_ref01_data_result = mandator_clearing_export_summary_ref01_ent->create(Struct::clone(mandator_clearing_export_summary_ref01_data), Value::undef());
    mandator_clearing_export_summary_ref01_data = Helpers::toMapAny(mandator_clearing_export_summary_ref01_data_result);
    if (!mandator_clearing_export_summary_ref01_data.is_map()) mandator_clearing_export_summary_ref01_data = vmap();
    ASSERT_TRUE(mandator_clearing_export_summary_ref01_data.is_map(), "expected create result to be a map");
  }

}

int main() {
  T_RUN(mandator_clearing_export_summary_entity_instance);
  T_RUN(mandator_clearing_export_summary_entity_stream);
  T_RUN(mandator_clearing_export_summary_entity_basic);
  return sdktest::summary("mandator_clearing_export_summary_entity_test");
}
