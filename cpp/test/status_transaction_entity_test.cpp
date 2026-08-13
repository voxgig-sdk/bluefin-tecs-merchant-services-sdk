// Generated basic-flow test for the status_transaction entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct StatusTransactionSetup {
  std::shared_ptr<BluefinTecsMerchantServicesSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static StatusTransactionSetup status_transaction_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/status_transaction/StatusTransactionTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsMerchantServicesSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("status_transaction01"), Value("status_transaction02"), Value("status_transaction03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_STATUS_TRANSACTION_ENTID", idmap},
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE", Value("FALSE")},
    {"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_STATUS_TRANSACTION_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE") == Value("TRUE");

  StatusTransactionSetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void status_transaction_entity_instance() {
  auto testsdk = BluefinTecsMerchantServicesSDK::testSDK();
  auto ent = testsdk->status_transaction();
  ASSERT_EQ(ent->getName(), std::string("status_transaction"), "entity name");
}


static void status_transaction_entity_basic() {
  auto setup = status_transaction_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create"}) {
    auto sk = is_control_skipped("entityOp", std::string("status_transaction.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto status_transaction_ref01_ent = client->status_transaction();
  Value status_transaction_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "status_transaction"}), "status_transaction_ref01"));
  if (!status_transaction_ref01_data.is_map()) status_transaction_ref01_data = vmap();
  {
    Value status_transaction_ref01_data_result = status_transaction_ref01_ent->create(Struct::clone(status_transaction_ref01_data), Value::undef())->data();
    status_transaction_ref01_data = Helpers::toMapAny(status_transaction_ref01_data_result);
    if (!status_transaction_ref01_data.is_map()) status_transaction_ref01_data = vmap();
    ASSERT_TRUE(status_transaction_ref01_data.is_map(), "expected create result to be a map");
  }

}

int main() {
  T_RUN(status_transaction_entity_instance);
  T_RUN(status_transaction_entity_basic);
  return sdktest::summary("status_transaction_entity_test");
}
