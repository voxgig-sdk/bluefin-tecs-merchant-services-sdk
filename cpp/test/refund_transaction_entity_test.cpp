// Generated basic-flow test for the refund_transaction entity (model-driven,
// unit mode; mirrors the rust/go TestEntity generator).

#include "runner_support.hpp"

using namespace sdk;
using namespace sdk::rs;

struct RefundTransactionSetup {
  std::shared_ptr<BluefinTecsMerchantServicesSDK> client;
  Value data;
  Value idmap;
  Value env;
  bool live = false;
  bool synthetic_only = false;
  long long now = 0;
};

static RefundTransactionSetup refund_transaction_basic_setup(const Value& extra) {
  load_env_local();

  std::string entity_data_file = "../.sdk/test/entity/refund_transaction/RefundTransactionTestData.json";
  Value entity_data = vs::parse_json(read_file(entity_data_file));

  Value options = vmap({{"entity", getp(entity_data, "existing")}});
  auto client = BluefinTecsMerchantServicesSDK::testSDK(options, extra);

  // idmap via transform (upper-cased id name synthetics), matching the donors.
  Value idmap = Struct::transform(
      vlist({Value("refund_transaction01"), Value("refund_transaction02"), Value("refund_transaction03")}),
      vmap({{"`$PACK`", vlist({
        Value(""),
        vmap({
          {"`$KEY`", Value("`$COPY`")},
          {"`$VAL`", vlist({Value("`$FORMAT`"), Value("upper"), Value("`$COPY`")})}
        })
      })}}));
  if (!idmap.is_map()) idmap = vmap();

  Value env = env_override(vmap({
    {"BLUEFINTECSMERCHANTSERVICES_TEST_REFUND_TRANSACTION_ENTID", idmap},
    {"BLUEFINTECSMERCHANTSERVICES_TEST_LIVE", Value("FALSE")},
    {"BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN", Value("FALSE")}
  }));

  Value idmap_resolved = Helpers::toMapAny(getp(env, "BLUEFINTECSMERCHANTSERVICES_TEST_REFUND_TRANSACTION_ENTID"));
  if (!idmap_resolved.is_map()) idmap_resolved = idmap;

  bool live = getp(env, "BLUEFINTECSMERCHANTSERVICES_TEST_LIVE") == Value("TRUE");

  RefundTransactionSetup s;
  s.client = client;
  s.data = entity_data;
  s.idmap = idmap_resolved;
  s.env = env;
  s.live = live;
  s.synthetic_only = false;
  s.now = now_ms();
  return s;
}

static void refund_transaction_entity_instance() {
  auto testsdk = BluefinTecsMerchantServicesSDK::testSDK();
  auto ent = testsdk->refund_transaction();
  ASSERT_EQ(ent->getName(), std::string("refund_transaction"), "entity name");
}

static void refund_transaction_entity_stream() {
  // stream() runs the list op through the full pipeline and returns the
  // result items. Seed two entities via test mode; with the streaming feature
  // active it yields the feature's incremental items, else it falls back to
  // the materialised items — either way every item is yielded.
  Value seed = vmap({{"entity", vmap({{"refund_transaction", vmap({
      {"strm01", vmap({{"id", Value("strm01")}})},
      {"strm02", vmap({{"id", Value("strm02")}})}})}})}});
  Value sdkopts = vmap({{"feature",
      vmap({{"streaming", vmap({{"active", Value(true)}})}})}});

  auto strsdk = BluefinTecsMerchantServicesSDK::testSDK(seed, sdkopts);
  auto se = strsdk->refund_transaction();
  std::vector<Value> items = se->stream("list", Value::undef(), Value::undef());
  ASSERT_EQ((int)items.size(), 2, "stream yields both seeded items");

  auto plainsdk = BluefinTecsMerchantServicesSDK::testSDK(seed, Value::undef());
  auto pe = plainsdk->refund_transaction();
  std::vector<Value> pitems = pe->stream("list", Value::undef(), Value::undef());
  ASSERT_EQ((int)pitems.size(), 2, "fallback stream yields both items");
}

static void refund_transaction_entity_basic() {
  auto setup = refund_transaction_basic_setup(Value::undef());
  std::string mode = setup.live ? "live" : "unit";
  for (const std::string& op : std::vector<std::string>{"create"}) {
    auto sk = is_control_skipped("entityOp", std::string("refund_transaction.") + op, mode);
    if (sk.first) { std::cerr << "skip: " << (sk.second.empty()? "sdk-test-control.json" : sk.second) << "\n"; return; }
  }
  auto client = setup.client;
  // CREATE
  auto refund_transaction_ref01_ent = client->refund_transaction();
  Value refund_transaction_ref01_data = Helpers::toMapAny(getp(Struct::getpath(setup.data, {"new", "refund_transaction"}), "refund_transaction_ref01"));
  if (!refund_transaction_ref01_data.is_map()) refund_transaction_ref01_data = vmap();
  {
    Value refund_transaction_ref01_data_result = refund_transaction_ref01_ent->create(Struct::clone(refund_transaction_ref01_data), Value::undef());
    refund_transaction_ref01_data = Helpers::toMapAny(refund_transaction_ref01_data_result);
    if (!refund_transaction_ref01_data.is_map()) refund_transaction_ref01_data = vmap();
    ASSERT_TRUE(refund_transaction_ref01_data.is_map(), "expected create result to be a map");
  }

}

int main() {
  T_RUN(refund_transaction_entity_instance);
  T_RUN(refund_transaction_entity_stream);
  T_RUN(refund_transaction_entity_basic);
  return sdktest::summary("refund_transaction_entity_test");
}
