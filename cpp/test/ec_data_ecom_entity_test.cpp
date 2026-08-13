// Generated basic-flow test for the ec_data_ecom entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct EcDataEcomSetup {
  std::shared_ptr<BluefinTecsMerchantServicesSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static EcDataEcomSetup ec_data_ecom_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/ec_data_ecom/EcDataEcomTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsMerchantServicesSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("ec_data_ecom01"), Value("ec_data_ecom02"), Value("ec_data_ecom03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EC_DATA_ECOM_ENTID", idmap},
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE", Value("FALSE")},
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EC_DATA_ECOM_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE") == Value("TRUE");

  EcDataEcomSetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void ec_data_ecom_entity_instance() {
  auto testsdk = BluefinTecsMerchantServicesSDK::testSDK();
  auto ent = testsdk->ec_data_ecom();
  ASSERT_EQ(ent->getName(), std::string("ec_data_ecom"), "entity name");
}


static void ec_data_ecom_entity_basic() {
  auto setup = ec_data_ecom_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create"}) {
    auto sk = is_control_skipped("entityOp", std::string("ec_data_ecom.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto ec_data_ecom_ref01_ent = client->ec_data_ecom();
  Value ec_data_ecom_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "ec_data_ecom"}), "ec_data_ecom_ref01"));
  if (!ec_data_ecom_ref01_data.is_map()) ec_data_ecom_ref01_data = vmap();
  {
    Value ec_data_ecom_ref01_data_result = ec_data_ecom_ref01_ent->create(Struct::clone(ec_data_ecom_ref01_data), Value::undef())->data();
    ec_data_ecom_ref01_data = Helpers::toMapAny(ec_data_ecom_ref01_data_result);
    if (!ec_data_ecom_ref01_data.is_map()) ec_data_ecom_ref01_data = vmap();
    ASSERT_TRUE(ec_data_ecom_ref01_data.is_map(), "expected create result to be a map");
  }

}

int main() {
  T_RUN(ec_data_ecom_entity_instance);
  T_RUN(ec_data_ecom_entity_basic);
  return sdktest::summary("ec_data_ecom_entity_test");
}
