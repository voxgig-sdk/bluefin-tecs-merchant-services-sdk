// Generated basic-flow test for the create_product entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct CreateProductSetup {
  std::shared_ptr<BluefinTecsMerchantServicesSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static CreateProductSetup create_product_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/create_product/CreateProductTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsMerchantServicesSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("create_product01"), Value("create_product02"), Value("create_product03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CREATE_PRODUCT_ENTID", idmap},
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE", Value("FALSE")},
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CREATE_PRODUCT_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE") == Value("TRUE");

  CreateProductSetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void create_product_entity_instance() {
  auto testsdk = BluefinTecsMerchantServicesSDK::testSDK();
  auto ent = testsdk->create_product();
  ASSERT_EQ(ent->getName(), std::string("create_product"), "entity name");
}


static void create_product_entity_basic() {
  auto setup = create_product_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create"}) {
    auto sk = is_control_skipped("entityOp", std::string("create_product.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto create_product_ref01_ent = client->create_product();
  Value create_product_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "create_product"}), "create_product_ref01"));
  if (!create_product_ref01_data.is_map()) create_product_ref01_data = vmap();
  {
    Value create_product_ref01_data_result = create_product_ref01_ent->create(Struct::clone(create_product_ref01_data), Value::undef())->data();
    create_product_ref01_data = Helpers::toMapAny(create_product_ref01_data_result);
    if (!create_product_ref01_data.is_map()) create_product_ref01_data = vmap();
    ASSERT_TRUE(create_product_ref01_data.is_map(), "expected create result to be a map");
  }

}

int main() {
  T_RUN(create_product_entity_instance);
  T_RUN(create_product_entity_basic);
  return sdktest::summary("create_product_entity_test");
}
