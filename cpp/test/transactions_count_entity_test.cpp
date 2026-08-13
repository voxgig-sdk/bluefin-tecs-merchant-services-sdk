// Generated basic-flow test for the transactions_count entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct TransactionsCountSetup {
  std::shared_ptr<BluefinTecsMerchantServicesSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static TransactionsCountSetup transactions_count_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/transactions_count/TransactionsCountTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsMerchantServicesSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("transactions_count01"), Value("transactions_count02"), Value("transactions_count03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_COUNT_ENTID", idmap},
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE", Value("FALSE")},
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_COUNT_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE") == Value("TRUE");

  TransactionsCountSetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void transactions_count_entity_instance() {
  auto testsdk = BluefinTecsMerchantServicesSDK::testSDK();
  auto ent = testsdk->transactions_count();
  ASSERT_EQ(ent->getName(), std::string("transactions_count"), "entity name");
}


static void transactions_count_entity_basic() {
  auto setup = transactions_count_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create"}) {
    auto sk = is_control_skipped("entityOp", std::string("transactions_count.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto transactions_count_ref01_ent = client->transactions_count();
  Value transactions_count_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "transactions_count"}), "transactions_count_ref01"));
  if (!transactions_count_ref01_data.is_map()) transactions_count_ref01_data = vmap();
  {
    Value transactions_count_ref01_data_result = transactions_count_ref01_ent->create(Struct::clone(transactions_count_ref01_data), Value::undef())->data();
    transactions_count_ref01_data = Helpers::toMapAny(transactions_count_ref01_data_result);
    if (!transactions_count_ref01_data.is_map()) transactions_count_ref01_data = vmap();
    ASSERT_TRUE(transactions_count_ref01_data.is_map(), "expected create result to be a map");
  }

}

int main() {
  T_RUN(transactions_count_entity_instance);
  T_RUN(transactions_count_entity_basic);
  return sdktest::summary("transactions_count_entity_test");
}
