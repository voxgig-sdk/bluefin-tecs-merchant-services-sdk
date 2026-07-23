# RegisterTerminal entity test

import json
import os
import time

import pytest

from utility.voxgig_struct import voxgig_struct as vs
from bluefintecsmerchantservices_sdk import BluefinTecsMerchantServicesSDK
from core import helpers

_TEST_DIR = os.path.dirname(os.path.abspath(__file__))
from test import runner


class TestRegisterTerminalEntity:

    def test_should_create_instance(self):
        testsdk = BluefinTecsMerchantServicesSDK.test(None, None)
        ent = testsdk.RegisterTerminal(None)
        assert ent is not None

    def test_should_run_basic_flow(self):
        setup = _register_terminal_basic_setup(None)
        # Per-op sdk-test-control.json skip — basic test exercises a flow with
        # multiple ops; skipping any one skips the whole flow (steps depend
        # on each other).
        _live = setup.get("live", False)
        for _op in ["create"]:
            _skip, _reason = runner.is_control_skipped("entityOp", "register_terminal." + _op, "live" if _live else "unit")
            if _skip:
                pytest.skip(_reason or "skipped via sdk-test-control.json")
                return
        # The basic flow consumes synthetic IDs from the fixture. In live mode
        # without an *_ENTID env override, those IDs hit the live API and 4xx.
        if setup.get("synthetic_only"):
            pytest.skip("live entity test uses synthetic IDs from fixture — "
                        "set BLUEFINTECSMERCHANTSERVICES_TEST_REGISTER_TERMINAL_ENTID JSON to run live")
        client = setup["client"]

        # CREATE
        register_terminal_ref01_ent = client.RegisterTerminal(None)
        register_terminal_ref01_data = helpers.to_map(vs.getprop(
            vs.getpath(setup["data"], "new.register_terminal"), "register_terminal_ref01"))

        register_terminal_ref01_data = helpers.to_map(register_terminal_ref01_ent.create(register_terminal_ref01_data, None))
        assert register_terminal_ref01_data is not None



def _register_terminal_basic_setup(extra):
    runner.load_env_local()

    entity_data_file = os.path.join(_TEST_DIR, "../../.sdk/test/entity/register_terminal/RegisterTerminalTestData.json")
    with open(entity_data_file, "r") as f:
        entity_data_source = f.read()

    entity_data = json.loads(entity_data_source)

    options = {}
    options["entity"] = entity_data.get("existing")

    client = BluefinTecsMerchantServicesSDK.test(options, extra)

    # Generate idmap via transform.
    idmap = vs.transform(
        ["register_terminal01", "register_terminal02", "register_terminal03"],
        {
            "`$PACK`": ["", {
                "`$KEY`": "`$COPY`",
                "`$VAL`": ["`$FORMAT`", "upper", "`$COPY`"],
            }],
        }
    )

    # Detect ENTID env override before envOverride consumes it. When live
    # mode is on without a real override, the basic test runs against synthetic
    # IDs from the fixture and 4xx's. We surface this so the test can skip.
    _entid_env_raw = os.environ.get(
        "BLUEFINTECSMERCHANTSERVICES_TEST_REGISTER_TERMINAL_ENTID")
    _idmap_overridden = _entid_env_raw is not None and _entid_env_raw.strip().startswith("{")

    env = runner.env_override({
        "BLUEFINTECSMERCHANTSERVICES_TEST_REGISTER_TERMINAL_ENTID": idmap,
        "BLUEFINTECSMERCHANTSERVICES_TEST_LIVE": "FALSE",
        "BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN": "FALSE",
        "BLUEFINTECSMERCHANTSERVICES_APIKEY": "NONE",
    })

    idmap_resolved = helpers.to_map(
        env.get("BLUEFINTECSMERCHANTSERVICES_TEST_REGISTER_TERMINAL_ENTID"))
    if idmap_resolved is None:
        idmap_resolved = helpers.to_map(idmap)

    if env.get("BLUEFINTECSMERCHANTSERVICES_TEST_LIVE") == "TRUE":
        merged_opts = vs.merge([
            {
                "apikey": env.get("BLUEFINTECSMERCHANTSERVICES_APIKEY"),
            },
            extra or {},
        ])
        client = BluefinTecsMerchantServicesSDK(helpers.to_map(merged_opts))

    _live = env.get("BLUEFINTECSMERCHANTSERVICES_TEST_LIVE") == "TRUE"
    return {
        "client": client,
        "data": entity_data,
        "idmap": idmap_resolved,
        "env": env,
        "explain": env.get("BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN") == "TRUE",
        "live": _live,
        "synthetic_only": _live and not _idmap_overridden,
        "now": int(time.time() * 1000),
    }
