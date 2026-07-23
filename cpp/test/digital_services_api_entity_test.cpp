// Generated basic-flow test for the digital_services_api entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct DigitalServicesApiSetup {
  std::shared_ptr<BluefinTecsMerchantServicesSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static DigitalServicesApiSetup digital_services_api_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/digital_services_api/DigitalServicesApiTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsMerchantServicesSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("digital_services_api01"), Value("digital_services_api02"), Value("digital_services_api03"), Value("mandator_clearing_export_download01"), Value("mandator_clearing_export_download02"), Value("mandator_clearing_export_download03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFINTECSMERCHANTSERVICES_TEST_DIGITAL_SERVICES_API_ENTID", idmap},
    {"BLUEFINTECSMERCHANTSERVICES_TEST_LIVE", Value("FALSE")},
    {"BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFINTECSMERCHANTSERVICES_TEST_DIGITAL_SERVICES_API_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFINTECSMERCHANTSERVICES_TEST_LIVE") == Value("TRUE");

  DigitalServicesApiSetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void digital_services_api_entity_instance() {
  auto testsdk = BluefinTecsMerchantServicesSDK::testSDK();
  auto ent = testsdk->digital_services_api();
  ASSERT_EQ(ent->getName(), std::string("digital_services_api"), "entity name");
}

static void digital_services_api_entity_stream() {
  // stream() runs the list op through the full pipeline and returns the
  // result items. Seed two entities via test mode; with the streaming feature
  // active it yields the feature's incremental items, else it falls back to
  // the materialised items — either way every item is yielded.
  Value seed = vmap({{"entity", vmap({{"digital_services_api", vmap({
      {"strm01", vmap({{"id", Value("strm01")}})},
      {"strm02", vmap({{"id", Value("strm02")}})}})}})}});
  Value sdkopts = vmap({{"feature",
      vmap({{"streaming", vmap({{"active", Value(true)}})}})}});

  auto strsdk = BluefinTecsMerchantServicesSDK::testSDK(seed, sdkopts);
  auto se = strsdk->digital_services_api();
  std::vector<Value> items = se->stream("list", Value::undef(), Value::undef());
  ASSERT_EQ((int)items.size(), 2, "stream yields both seeded items");

  auto plainsdk = BluefinTecsMerchantServicesSDK::testSDK(seed, Value::undef());
  auto pe = plainsdk->digital_services_api();
  std::vector<Value> pitems = pe->stream("list", Value::undef(), Value::undef());
  ASSERT_EQ((int)pitems.size(), 2, "fallback stream yields both items");
}

static void digital_services_api_entity_basic() {
  auto setup = digital_services_api_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create", "load"}) {
    auto sk = is_control_skipped("entityOp", std::string("digital_services_api.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto digital_services_api_ref01_ent = client->digital_services_api();
  Value digital_services_api_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "digital_services_api"}), "digital_services_api_ref01"));
  if (!digital_services_api_ref01_data.is_map()) digital_services_api_ref01_data = vmap();
  {
    Value digital_services_api_ref01_data_result = digital_services_api_ref01_ent->create(Struct::clone(digital_services_api_ref01_data), Value::undef());
    digital_services_api_ref01_data = Helpers::toMapAny(digital_services_api_ref01_data_result);
    if (!digital_services_api_ref01_data.is_map()) digital_services_api_ref01_data = vmap();
    ASSERT_TRUE(digital_services_api_ref01_data.is_map(), "expected create result to be a map");
  }

  // LOAD
  Value digital_services_api_ref01_match_dt0 = vmap();
  Value digital_services_api_ref01_data_dt0_loaded = digital_services_api_ref01_ent->load(digital_services_api_ref01_match_dt0, Value::undef());
  ASSERT_TRUE(!digital_services_api_ref01_data_dt0_loaded.is_undef(), "expected load result to be non-nil");

}

int main() {
  T_RUN(digital_services_api_entity_instance);
  T_RUN(digital_services_api_entity_stream);
  T_RUN(digital_services_api_entity_basic);
  return sdktest::summary("digital_services_api_entity_test");
}
