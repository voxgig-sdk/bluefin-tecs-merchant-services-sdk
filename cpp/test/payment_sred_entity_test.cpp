// Generated basic-flow test for the payment_sred entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct PaymentSredSetup {
  std::shared_ptr<BluefinTecsMerchantServicesSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static PaymentSredSetup payment_sred_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/payment_sred/PaymentSredTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsMerchantServicesSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("payment_sred01"), Value("payment_sred02"), Value("payment_sred03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PAYMENT_SRED_ENTID", idmap},
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE", Value("FALSE")},
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PAYMENT_SRED_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE") == Value("TRUE");

  PaymentSredSetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void payment_sred_entity_instance() {
  auto testsdk = BluefinTecsMerchantServicesSDK::testSDK();
  auto ent = testsdk->payment_sred();
  ASSERT_EQ(ent->getName(), std::string("payment_sred"), "entity name");
}


static void payment_sred_entity_basic() {
  auto setup = payment_sred_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create"}) {
    auto sk = is_control_skipped("entityOp", std::string("payment_sred.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto payment_sred_ref01_ent = client->payment_sred();
  Value payment_sred_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "payment_sred"}), "payment_sred_ref01"));
  if (!payment_sred_ref01_data.is_map()) payment_sred_ref01_data = vmap();
  {
    Value payment_sred_ref01_data_result = payment_sred_ref01_ent->create(Struct::clone(payment_sred_ref01_data), Value::undef())->data();
    payment_sred_ref01_data = Helpers::toMapAny(payment_sred_ref01_data_result);
    if (!payment_sred_ref01_data.is_map()) payment_sred_ref01_data = vmap();
    ASSERT_TRUE(payment_sred_ref01_data.is_map(), "expected create result to be a map");
  }

}

int main() {
  T_RUN(payment_sred_entity_instance);
  T_RUN(payment_sred_entity_basic);
  return sdktest::summary("payment_sred_entity_test");
}
