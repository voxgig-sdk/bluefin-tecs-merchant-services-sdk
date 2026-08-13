# TransactionsCount entity test

import json
import os
import time

import pytest

from bluefintecsmerchantservices_sdk.utility.voxgig_struct import voxgig_struct as vs
from bluefintecsmerchantservices_sdk import BluefinTecsMerchantServicesSDK
from bluefintecsmerchantservices_sdk.core import helpers

_TEST_DIR = os.path.dirname(os.path.abspath(__file__))
from test import runner


class TestTransactionsCountEntity:

    def test_should_create_instance(self):
        testsdk = BluefinTecsMerchantServicesSDK.test(None, None)
        ent = testsdk.TransactionsCount(None)
        assert ent is not None

    def test_should_run_basic_flow(self):
        setup = _transactions_count_basic_setup(None)
        # Per-op sdk-test-control.json skip — basic test exercises a flow with
        # multiple ops; skipping any one skips the whole flow (steps depend
        # on each other).
        _live = setup.get("live", False)
        for _op in ["create"]:
            _skip, _reason = runner.is_control_skipped("entityOp", "transactions_count." + _op, "live" if _live else "unit")
            if _skip:
                pytest.skip(_reason or "skipped via sdk-test-control.json")
                return
        # The basic flow consumes synthetic IDs from the fixture. In live mode
        # without an *_ENTID env override, those IDs hit the live API and 4xx.
        if setup.get("synthetic_only"):
            pytest.skip("live entity test uses synthetic IDs from fixture — "
                        "set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_COUNT_ENTID JSON to run live")
        client = setup["client"]

        # CREATE
        transactions_count_ref01_ent = client.TransactionsCount(None)
        transactions_count_ref01_data = helpers.to_map(vs.getprop(
            vs.getpath(setup["data"], "new.transactions_count"), "transactions_count_ref01"))

        transactions_count_ref01_data = helpers.to_map(runner.entity_data(transactions_count_ref01_ent.create(transactions_count_ref01_data, None)))
        assert transactions_count_ref01_data is not None



def _transactions_count_basic_setup(extra):
    runner.load_env_local()

    entity_data_file = os.path.join(_TEST_DIR, "../../.sdk/test/entity/transactions_count/TransactionsCountTestData.json")
    with open(entity_data_file, "r") as f:
        entity_data_source = f.read()

    entity_data = json.loads(entity_data_source)

    options = {}
    options["entity"] = entity_data.get("existing")

    client = BluefinTecsMerchantServicesSDK.test(options, extra)

    # Generate idmap via transform.
    idmap = vs.transform(
        ["transactions_count01", "transactions_count02", "transactions_count03"],
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
        "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_COUNT_ENTID")
    _idmap_overridden = _entid_env_raw is not None and _entid_env_raw.strip().startswith("{")

    env = runner.env_override({
        "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_COUNT_ENTID": idmap,
        "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE": "FALSE",
        "BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN": "FALSE",
        "BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY": "NONE",
    })

    idmap_resolved = helpers.to_map(
        env.get("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_COUNT_ENTID"))
    if idmap_resolved is None:
        idmap_resolved = helpers.to_map(idmap)

    if env.get("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE") == "TRUE":
        merged_opts = vs.merge([
            {
                "apikey": env.get("BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"),
            },
            extra or {},
        ])
        client = BluefinTecsMerchantServicesSDK(helpers.to_map(merged_opts))

    _live = env.get("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE") == "TRUE"
    return {
        "client": client,
        "data": entity_data,
        "idmap": idmap_resolved,
        "env": env,
        "explain": env.get("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN") == "TRUE",
        "live": _live,
        "synthetic_only": _live and not _idmap_overridden,
        "now": int(time.time() * 1000),
    }
