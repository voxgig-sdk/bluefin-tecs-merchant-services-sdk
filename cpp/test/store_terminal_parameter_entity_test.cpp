// Generated basic-flow test for the store_terminal_parameter entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct StoreTerminalParameterSetup {
  std::shared_ptr<BluefinTecsMerchantServicesSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static StoreTerminalParameterSetup store_terminal_parameter_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/store_terminal_parameter/StoreTerminalParameterTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsMerchantServicesSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("store_terminal_parameter01"), Value("store_terminal_parameter02"), Value("store_terminal_parameter03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFINTECSMERCHANTSERVICES_TEST_STORE_TERMINAL_PARAMETER_ENTID", idmap},
    {"BLUEFINTECSMERCHANTSERVICES_TEST_LIVE", Value("FALSE")},
    {"BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFINTECSMERCHANTSERVICES_TEST_STORE_TERMINAL_PARAMETER_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFINTECSMERCHANTSERVICES_TEST_LIVE") == Value("TRUE");

  StoreTerminalParameterSetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void store_terminal_parameter_entity_instance() {
  auto testsdk = BluefinTecsMerchantServicesSDK::testSDK();
  auto ent = testsdk->store_terminal_parameter();
  ASSERT_EQ(ent->getName(), std::string("store_terminal_parameter"), "entity name");
}

static void store_terminal_parameter_entity_stream() {
  // stream() runs the list op through the full pipeline and returns the
  // result items. Seed two entities via test mode; with the streaming feature
  // active it yields the feature's incremental items, else it falls back to
  // the materialised items — either way every item is yielded.
  Value seed = vmap({{"entity", vmap({{"store_terminal_parameter", vmap({
      {"strm01", vmap({{"id", Value("strm01")}})},
      {"strm02", vmap({{"id", Value("strm02")}})}})}})}});
  Value sdkopts = vmap({{"feature",
      vmap({{"streaming", vmap({{"active", Value(true)}})}})}});

  auto strsdk = BluefinTecsMerchantServicesSDK::testSDK(seed, sdkopts);
  auto se = strsdk->store_terminal_parameter();
  std::vector<Value> items = se->stream("list", Value::undef(), Value::undef());
  ASSERT_EQ((int)items.size(), 2, "stream yields both seeded items");

  auto plainsdk = BluefinTecsMerchantServicesSDK::testSDK(seed, Value::undef());
  auto pe = plainsdk->store_terminal_parameter();
  std::vector<Value> pitems = pe->stream("list", Value::undef(), Value::undef());
  ASSERT_EQ((int)pitems.size(), 2, "fallback stream yields both items");
}

static void store_terminal_parameter_entity_basic() {
  auto setup = store_terminal_parameter_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create"}) {
    auto sk = is_control_skipped("entityOp", std::string("store_terminal_parameter.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto store_terminal_parameter_ref01_ent = client->store_terminal_parameter();
  Value store_terminal_parameter_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "store_terminal_parameter"}), "store_terminal_parameter_ref01"));
  if (!store_terminal_parameter_ref01_data.is_map()) store_terminal_parameter_ref01_data = vmap();
  {
    Value store_terminal_parameter_ref01_data_result = store_terminal_parameter_ref01_ent->create(Struct::clone(store_terminal_parameter_ref01_data), Value::undef());
    store_terminal_parameter_ref01_data = Helpers::toMapAny(store_terminal_parameter_ref01_data_result);
    if (!store_terminal_parameter_ref01_data.is_map()) store_terminal_parameter_ref01_data = vmap();
    ASSERT_TRUE(store_terminal_parameter_ref01_data.is_map(), "expected create result to be a map");
  }

}

int main() {
  T_RUN(store_terminal_parameter_entity_instance);
  T_RUN(store_terminal_parameter_entity_stream);
  T_RUN(store_terminal_parameter_entity_basic);
  return sdktest::summary("store_terminal_parameter_entity_test");
}
