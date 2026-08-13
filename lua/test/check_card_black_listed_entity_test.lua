-- CheckCardBlackListed entity test

local json = require("dkjson")
local vs = require("utility.struct.struct")
local sdk = require("bluefin-tecs-merchant-services_sdk")
local helpers = require("core.helpers")
local runner = require("test.runner")

local _test_dir = debug.getinfo(1, "S").source:match("^@(.+/)")  or "./"

describe("CheckCardBlackListedEntity", function()
  it("should create instance", function()
    local testsdk = sdk.test(nil, nil)
    local ent = testsdk:CheckCardBlackListed(nil)
    assert.is_not_nil(ent)
  end)

  it("should run basic flow", function()
    local setup = check_card_black_listed_basic_setup(nil)
    -- Per-op sdk-test-control.json skip.
    local _live = setup.live or false
    for _, _op in ipairs({"create"}) do
      local _should_skip, _reason = runner.is_control_skipped("entityOp", "check_card_black_listed." .. _op, _live and "live" or "unit")
      if _should_skip then
        pending(_reason or "skipped via sdk-test-control.json")
        return
      end
    end
    -- The basic flow consumes synthetic IDs from the fixture. In live mode
    -- without an *_ENTID env override, those IDs hit the live API and 4xx.
    if setup.synthetic_only then
      pending("live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CHECK_CARD_BLACK_LISTED_ENTID JSON to run live")
      return
    end
    local client = setup.client

    -- CREATE
    local check_card_black_listed_ref01_ent = client:CheckCardBlackListed(nil)
    local check_card_black_listed_ref01_data = helpers.to_map(vs.getprop(
      vs.getpath(setup.data, "new.check_card_black_listed"), "check_card_black_listed_ref01"))

    local check_card_black_listed_ref01_data_result, err = check_card_black_listed_ref01_ent:create(check_card_black_listed_ref01_data, nil)
    assert.is_nil(err)
    check_card_black_listed_ref01_data = helpers.to_map(type(check_card_black_listed_ref01_data_result) == 'table' and check_card_black_listed_ref01_data_result.data_get and check_card_black_listed_ref01_data_result:data_get() or check_card_black_listed_ref01_data_result)
    assert.is_not_nil(check_card_black_listed_ref01_data)

  end)
end)

function check_card_black_listed_basic_setup(extra)
  runner.load_env_local()

  local entity_data_file = _test_dir .. "../../.sdk/test/entity/check_card_black_listed/CheckCardBlackListedTestData.json"
  local f = io.open(entity_data_file, "r")
  if f == nil then
    error("failed to read check_card_black_listed test data: " .. entity_data_file)
  end
  local entity_data_source = f:read("*a")
  f:close()

  local entity_data = json.decode(entity_data_source)

  local options = {}
  options["entity"] = entity_data["existing"]

  local client = sdk.test(options, extra)

  -- Generate idmap via transform.
  local idmap = vs.transform(
    { "check_card_black_listed01", "check_card_black_listed02", "check_card_black_listed03" },
    {
      ["`$PACK`"] = { "", {
        ["`$KEY`"] = "`$COPY`",
        ["`$VAL`"] = { "`$FORMAT`", "upper", "`$COPY`" },
      }},
    }
  )

  -- Detect ENTID env override before envOverride consumes it. When live
  -- mode is on without a real override, the basic test runs against synthetic
  -- IDs from the fixture and 4xx's. Surface this so the test can skip.
  local entid_env_raw = os.getenv("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CHECK_CARD_BLACK_LISTED_ENTID")
  local idmap_overridden = entid_env_raw ~= nil and entid_env_raw:match("^%s*{") ~= nil

  local env = runner.env_override({
    ["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CHECK_CARD_BLACK_LISTED_ENTID"] = idmap,
    ["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"] = "FALSE",
    ["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN"] = "FALSE",
    ["BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"] = "NONE",
  })

  local idmap_resolved = helpers.to_map(
    env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CHECK_CARD_BLACK_LISTED_ENTID"])
  if idmap_resolved == nil then
    idmap_resolved = helpers.to_map(idmap)
  end

  if env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"] == "TRUE" then
    local merged_opts = vs.merge({
      {
        apikey = env["BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"],
      },
      extra or {},
    })
    client = sdk.new(helpers.to_map(merged_opts))
  end

  local live = env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"] == "TRUE"
  return {
    client = client,
    data = entity_data,
    idmap = idmap_resolved,
    env = env,
    explain = env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN"] == "TRUE",
    live = live,
    synthetic_only = live and not idmap_overridden,
    now = os.time() * 1000,
  }
end
