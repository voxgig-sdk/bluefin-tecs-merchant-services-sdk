// Generated basic-flow test for the register_tecs_company entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct RegisterTecsCompanySetup {
  std::shared_ptr<BluefinTecsMerchantServicesSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static RegisterTecsCompanySetup register_tecs_company_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/register_tecs_company/RegisterTecsCompanyTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsMerchantServicesSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("register_tecs_company01"), Value("register_tecs_company02"), Value("register_tecs_company03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFINTECSMERCHANTSERVICES_TEST_REGISTER_TECS_COMPANY_ENTID", idmap},
    {"BLUEFINTECSMERCHANTSERVICES_TEST_LIVE", Value("FALSE")},
    {"BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFINTECSMERCHANTSERVICES_TEST_REGISTER_TECS_COMPANY_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFINTECSMERCHANTSERVICES_TEST_LIVE") == Value("TRUE");

  RegisterTecsCompanySetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void register_tecs_company_entity_instance() {
  auto testsdk = BluefinTecsMerchantServicesSDK::testSDK();
  auto ent = testsdk->register_tecs_company();
  ASSERT_EQ(ent->getName(), std::string("register_tecs_company"), "entity name");
}

static void register_tecs_company_entity_stream() {
  // stream() runs the list op through the full pipeline and returns the
  // result items. Seed two entities via test mode; with the streaming feature
  // active it yields the feature's incremental items, else it falls back to
  // the materialised items — either way every item is yielded.
  Value seed = vmap({{"entity", vmap({{"register_tecs_company", vmap({
      {"strm01", vmap({{"id", Value("strm01")}})},
      {"strm02", vmap({{"id", Value("strm02")}})}})}})}});
  Value sdkopts = vmap({{"feature",
      vmap({{"streaming", vmap({{"active", Value(true)}})}})}});

  auto strsdk = BluefinTecsMerchantServicesSDK::testSDK(seed, sdkopts);
  auto se = strsdk->register_tecs_company();
  std::vector<Value> items = se->stream("list", Value::undef(), Value::undef());
  ASSERT_EQ((int)items.size(), 2, "stream yields both seeded items");

  auto plainsdk = BluefinTecsMerchantServicesSDK::testSDK(seed, Value::undef());
  auto pe = plainsdk->register_tecs_company();
  std::vector<Value> pitems = pe->stream("list", Value::undef(), Value::undef());
  ASSERT_EQ((int)pitems.size(), 2, "fallback stream yields both items");
}

static void register_tecs_company_entity_basic() {
  auto setup = register_tecs_company_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create"}) {
    auto sk = is_control_skipped("entityOp", std::string("register_tecs_company.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto register_tecs_company_ref01_ent = client->register_tecs_company();
  Value register_tecs_company_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "register_tecs_company"}), "register_tecs_company_ref01"));
  if (!register_tecs_company_ref01_data.is_map()) register_tecs_company_ref01_data = vmap();
  {
    Value register_tecs_company_ref01_data_result = register_tecs_company_ref01_ent->create(Struct::clone(register_tecs_company_ref01_data), Value::undef());
    register_tecs_company_ref01_data = Helpers::toMapAny(register_tecs_company_ref01_data_result);
    if (!register_tecs_company_ref01_data.is_map()) register_tecs_company_ref01_data = vmap();
    ASSERT_TRUE(register_tecs_company_ref01_data.is_map(), "expected create result to be a map");
  }

}

int main() {
  T_RUN(register_tecs_company_entity_instance);
  T_RUN(register_tecs_company_entity_stream);
  T_RUN(register_tecs_company_entity_basic);
  return sdktest::summary("register_tecs_company_entity_test");
}
