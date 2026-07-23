# MoveTid entity test

require "minitest/autorun"
require "json"
require_relative "../BluefinTecsMerchantServices_sdk"
require_relative "runner"

class MoveTidEntityTest < Minitest::Test
  def test_create_instance
    testsdk = BluefinTecsMerchantServicesSDK.test(nil, nil)
    ent = testsdk.MoveTid(nil)
    assert !ent.nil?
  end

  def test_basic_flow
    setup = move_tid_basic_setup(nil)
    # Per-op sdk-test-control.json skip.
    _live = setup[:live] || false
    ["create"].each do |_op|
      _should_skip, _reason = Runner.is_control_skipped("entityOp", "move_tid." + _op, _live ? "live" : "unit")
      if _should_skip
        skip(_reason || "skipped via sdk-test-control.json")
        return
      end
    end
    # The basic flow consumes synthetic IDs from the fixture. In live mode
    # without an *_ENTID env override, those IDs hit the live API and 4xx.
    if setup[:synthetic_only]
      skip "live entity test uses synthetic IDs from fixture — set BLUEFINTECSMERCHANTSERVICES_TEST_MOVE_TID_ENTID JSON to run live"
      return
    end
    client = setup[:client]

    # CREATE
    move_tid_ref01_ent = client.MoveTid(nil)
    move_tid_ref01_data = Helpers.to_map(Vs.getprop(
      Vs.getpath(setup[:data], "new.move_tid"), "move_tid_ref01"))

    move_tid_ref01_data_result = move_tid_ref01_ent.create(move_tid_ref01_data, nil)
    move_tid_ref01_data = Helpers.to_map(move_tid_ref01_data_result)
    assert !move_tid_ref01_data.nil?

  end
end

def move_tid_basic_setup(extra)
  Runner.load_env_local

  entity_data_file = File.join(__dir__, "..", "..", ".sdk", "test", "entity", "move_tid", "MoveTidTestData.json")
  entity_data_source = File.read(entity_data_file)
  entity_data = JSON.parse(entity_data_source)

  options = {}
  options["entity"] = entity_data["existing"]

  client = BluefinTecsMerchantServicesSDK.test(options, extra)

  # Generate idmap via transform.
  idmap = Vs.transform(
    ["move_tid01", "move_tid02", "move_tid03"],
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
  entid_env_raw = ENV["BLUEFINTECSMERCHANTSERVICES_TEST_MOVE_TID_ENTID"]
  idmap_overridden = !entid_env_raw.nil? && entid_env_raw.strip.start_with?("{")

  env = Runner.env_override({
    "BLUEFINTECSMERCHANTSERVICES_TEST_MOVE_TID_ENTID" => idmap,
    "BLUEFINTECSMERCHANTSERVICES_TEST_LIVE" => "FALSE",
    "BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN" => "FALSE",
    "BLUEFINTECSMERCHANTSERVICES_APIKEY" => "NONE",
  })

  idmap_resolved = Helpers.to_map(
    env["BLUEFINTECSMERCHANTSERVICES_TEST_MOVE_TID_ENTID"])
  if idmap_resolved.nil?
    idmap_resolved = Helpers.to_map(idmap)
  end

  if env["BLUEFINTECSMERCHANTSERVICES_TEST_LIVE"] == "TRUE"
    merged_opts = Vs.merge([
      {
        "apikey" => env["BLUEFINTECSMERCHANTSERVICES_APIKEY"],
      },
      extra || {},
    ])
    client = BluefinTecsMerchantServicesSDK.new(Helpers.to_map(merged_opts))
  end

  live = env["BLUEFINTECSMERCHANTSERVICES_TEST_LIVE"] == "TRUE"
  {
    client: client,
    data: entity_data,
    idmap: idmap_resolved,
    env: env,
    explain: env["BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN"] == "TRUE",
    live: live,
    synthetic_only: live && !idmap_overridden,
    now: (Time.now.to_f * 1000).to_i,
  }
end
