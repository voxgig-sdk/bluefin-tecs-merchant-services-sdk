# KeepAlive entity test

require "minitest/autorun"
require "json"
require_relative "../BluefinTecsMerchantServices_sdk"
require_relative "runner"

class KeepAliveEntityTest < Minitest::Test
  def test_create_instance
    testsdk = BluefinTecsMerchantServicesSDK.test(nil, nil)
    ent = testsdk.KeepAlive(nil)
    assert !ent.nil?
  end

  def test_basic_flow
    setup = keep_alive_basic_setup(nil)
    # Per-op sdk-test-control.json skip.
    _live = setup[:live] || false
    ["create"].each do |_op|
      _should_skip, _reason = Runner.is_control_skipped("entityOp", "keep_alive." + _op, _live ? "live" : "unit")
      if _should_skip
        skip(_reason || "skipped via sdk-test-control.json")
        return
      end
    end
    # The basic flow consumes synthetic IDs from the fixture. In live mode
    # without an *_ENTID env override, those IDs hit the live API and 4xx.
    if setup[:synthetic_only]
      skip "live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_KEEP_ALIVE_ENTID JSON to run live"
      return
    end
    client = setup[:client]

    # CREATE
    keep_alive_ref01_ent = client.KeepAlive(nil)
    keep_alive_ref01_data = Helpers.to_map(Vs.getprop(
      Vs.getpath(setup[:data], "new.keep_alive"), "keep_alive_ref01"))

    keep_alive_ref01_data_result = keep_alive_ref01_ent.create(keep_alive_ref01_data, nil)
    keep_alive_ref01_data = Helpers.to_map(keep_alive_ref01_data_result.respond_to?(:data_get) ? keep_alive_ref01_data_result.data_get : keep_alive_ref01_data_result)
    assert !keep_alive_ref01_data.nil?

  end
end

def keep_alive_basic_setup(extra)
  Runner.load_env_local

  entity_data_file = File.join(__dir__, "..", "..", ".sdk", "test", "entity", "keep_alive", "KeepAliveTestData.json")
  entity_data_source = File.read(entity_data_file)
  entity_data = JSON.parse(entity_data_source)

  options = {}
  options["entity"] = entity_data["existing"]

  client = BluefinTecsMerchantServicesSDK.test(options, extra)

  # Generate idmap via transform.
  idmap = Vs.transform(
    ["keep_alive01", "keep_alive02", "keep_alive03"],
    {
      "`$PACK`" => ["", {
        "`$KEY`" => "`$COPY`",
        "`$VAL`" => ["`$FORMAT`", "upper", "`$COPY`"],
      }],
    }
  )

  # Detect ENTID env override before envOverride consumes it. When live
  # mode is on without a real override, the basic test runs against synthetic
  # IDs from the fixture and 4xx's. Surface this so the test can skip.
  entid_env_raw = ENV["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_KEEP_ALIVE_ENTID"]
  idmap_overridden = !entid_env_raw.nil? && entid_env_raw.strip.start_with?("{")

  env = Runner.env_override({
    "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_KEEP_ALIVE_ENTID" => idmap,
    "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE" => "FALSE",
    "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN" => "FALSE",
    "BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY" => "NONE",
  })

  idmap_resolved = Helpers.to_map(
    env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_KEEP_ALIVE_ENTID"])
  if idmap_resolved.nil?
    idmap_resolved = Helpers.to_map(idmap)
  end

  if env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"] == "TRUE"
    merged_opts = Vs.merge([
      {
        "apikey" => env["BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"],
      },
      extra || {},
    ])
    client = BluefinTecsMerchantServicesSDK.new(Helpers.to_map(merged_opts))
  end

  live = env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"] == "TRUE"
  {
    client: client,
    data: entity_data,
    idmap: idmap_resolved,
    env: env,
    explain: env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN"] == "TRUE",
    live: live,
    synthetic_only: live && !idmap_overridden,
    now: (Time.now.to_f * 1000).to_i,
  }
end
