// Generated basic-flow test for the terminal_id entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct TerminalIdSetup {
  std::shared_ptr<BluefinTecsMerchantServicesSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static TerminalIdSetup terminal_id_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/terminal_id/TerminalIdTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsMerchantServicesSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("terminal_id01"), Value("terminal_id02"), Value("terminal_id03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TERMINAL_ID_ENTID", idmap},
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE", Value("FALSE")},
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TERMINAL_ID_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE") == Value("TRUE");

  TerminalIdSetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void terminal_id_entity_instance() {
  auto testsdk = BluefinTecsMerchantServicesSDK::testSDK();
  auto ent = testsdk->terminal_id();
  ASSERT_EQ(ent->getName(), std::string("terminal_id"), "entity name");
}


static void terminal_id_entity_basic() {
  auto setup = terminal_id_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create"}) {
    auto sk = is_control_skipped("entityOp", std::string("terminal_id.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto terminal_id_ref01_ent = client->terminal_id();
  Value terminal_id_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "terminal_id"}), "terminal_id_ref01"));
  if (!terminal_id_ref01_data.is_map()) terminal_id_ref01_data = vmap();
  {
    Value terminal_id_ref01_data_result = terminal_id_ref01_ent->create(Struct::clone(terminal_id_ref01_data), Value::undef())->data();
    terminal_id_ref01_data = Helpers::toMapAny(terminal_id_ref01_data_result);
    if (!terminal_id_ref01_data.is_map()) terminal_id_ref01_data = vmap();
    ASSERT_TRUE(terminal_id_ref01_data.is_map(), "expected create result to be a map");
  }

}

int main() {
  T_RUN(terminal_id_entity_instance);
  T_RUN(terminal_id_entity_basic);
  return sdktest::summary("terminal_id_entity_test");
}
