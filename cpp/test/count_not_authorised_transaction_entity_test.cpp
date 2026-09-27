// Generated basic-flow test for the count_not_authorised_transaction entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct CountNotAuthorisedTransactionSetup {
  std::shared_ptr<BluefinTecsMerchantServicesSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static CountNotAuthorisedTransactionSetup count_not_authorised_transaction_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/count_not_authorised_transaction/CountNotAuthorisedTransactionTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsMerchantServicesSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("count_not_authorised_transaction01"), Value("count_not_authorised_transaction02"), Value("count_not_authorised_transaction03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_COUNT_NOT_AUTHORISED_TRANSACTION_ENTID", idmap},
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE", Value("FALSE")},
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_COUNT_NOT_AUTHORISED_TRANSACTION_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE") == Value("TRUE");

  CountNotAuthorisedTransactionSetup s;
  s.client = client;
  s.d = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void count_not_authorised_transaction_entity_instance() {
  auto testsdk = BluefinTecsMerchantServicesSDK::testSDK();
  auto ent = testsdk->count_not_authorised_transaction();
  ASSERT_EQ(ent->getName(), std::string("count_not_authorised_transaction"), "entity name");
}


static void count_not_authorised_transaction_entity_basic() {
  auto setup = count_not_authorised_transaction_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create"}) {
    auto sk = is_control_skipped("entityOp", std::string("count_not_authorised_transaction.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto count_not_authorised_transaction_ref01_ent = client->count_not_authorised_transaction();
  Value count_not_authorised_transaction_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "count_not_authorised_transaction"}), "count_not_authorised_transaction_ref01"));
  if (!count_not_authorised_transaction_ref01_data.is_map()) count_not_authorised_transaction_ref01_data = vmap();
  {
    Value count_not_authorised_transaction_ref01_data_result = count_not_authorised_transaction_ref01_ent->create(Struct::clone(count_not_authorised_transaction_ref01_data), Value::undef())->data();
    count_not_authorised_transaction_ref01_data = Helpers::toMapAny(count_not_authorised_transaction_ref01_data_result);
    if (!count_not_authorised_transaction_ref01_data.is_map()) count_not_authorised_transaction_ref01_data = vmap();
    ASSERT_TRUE(count_not_authorised_transaction_ref01_data.is_map(), "expected create result to be a map");
  }

}

int main() {
  T_RUN(count_not_authorised_transaction_entity_instance);
  T_RUN(count_not_authorised_transaction_entity_basic);
  return sdktest::summary("count_not_authorised_transaction_entity_test");
}
