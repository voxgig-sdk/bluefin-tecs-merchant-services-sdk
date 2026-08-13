# TerminalId entity test

require "minitest/autorun"
require "json"
require_relative "../BluefinTecsMerchantServices_sdk"
require_relative "runner"

class TerminalIdEntityTest < Minitest::Test
  def test_create_instance
    testsdk = BluefinTecsMerchantServicesSDK.test(nil, nil)
    ent = testsdk.TerminalId(nil)
    assert !ent.nil?
  end

  def test_basic_flow
    setup = terminal_id_basic_setup(nil)
    # Per-op sdk-test-control.json skip.
    _live = setup[:live] || false
    ["create"].each do |_op|
      _should_skip, _reason = Runner.is_control_skipped("entityOp", "terminal_id." + _op, _live ? "live" : "unit")
      if _should_skip
        skip(_reason || "skipped via sdk-test-control.json")
        return
      end
    end
    # The basic flow consumes synthetic IDs from the fixture. In live mode
    # without an *_ENTID env override, those IDs hit the live API and 4xx.
    if setup[:synthetic_only]
      skip "live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TERMINAL_ID_ENTID JSON to run live"
      return
    end
    client = setup[:client]

    # CREATE
    terminal_id_ref01_ent = client.TerminalId(nil)
    terminal_id_ref01_data = Helpers.to_map(Vs.getprop(
      Vs.getpath(setup[:data], "new.terminal_id"), "terminal_id_ref01"))

    terminal_id_ref01_data_result = terminal_id_ref01_ent.create(terminal_id_ref01_data, nil)
    terminal_id_ref01_data = Helpers.to_map(terminal_id_ref01_data_result.respond_to?(:data_get) ? terminal_id_ref01_data_result.data_get : terminal_id_ref01_data_result)
    assert !terminal_id_ref01_data.nil?

  end
end

def terminal_id_basic_setup(extra)
  Runner.load_env_local

  entity_data_file = File.join(__dir__, "..", "..", ".sdk", "test", "entity", "terminal_id", "TerminalIdTestData.json")
  entity_data_source = File.read(entity_data_file)
  entity_data = JSON.parse(entity_data_source)

  options = {}
  options["entity"] = entity_data["existing"]

  client = BluefinTecsMerchantServicesSDK.test(options, extra)

  # Generate idmap via transform.
  idmap = Vs.transform(
    ["terminal_id01", "terminal_id02", "terminal_id03"],
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
  entid_env_raw = ENV["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TERMINAL_ID_ENTID"]
  idmap_overridden = !entid_env_raw.nil? && entid_env_raw.strip.start_with?("{")

  env = Runner.env_override({
    "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TERMINAL_ID_ENTID" => idmap,
    "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE" => "FALSE",
    "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN" => "FALSE",
    "BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY" => "NONE",
  })

  idmap_resolved = Helpers.to_map(
    env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TERMINAL_ID_ENTID"])
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
