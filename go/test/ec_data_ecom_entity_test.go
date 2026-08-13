package sdktest

import (
	"encoding/json"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
	"time"

	sdk "github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/go"
	"github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/go/core"

	vs "github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/go/utility/struct"
)

func TestEcDataEcomEntity(t *testing.T) {
	t.Run("instance", func(t *testing.T) {
		testsdk := sdk.TestSDK(nil, nil)
		ent := testsdk.EcDataEcom(nil)
		if ent == nil {
			t.Fatal("expected non-nil EcDataEcomEntity")
		}
	})

	t.Run("basic", func(t *testing.T) {
		setup := ec_data_ecomBasicSetup(nil)
		// Per-op sdk-test-control.json skip — basic test exercises a flow
		// with multiple ops; skipping any op skips the whole flow.
		_mode := "unit"
		if setup.live {
			_mode = "live"
		}
		for _, _op := range []string{"create"} {
			if _shouldSkip, _reason := isControlSkipped("entityOp", "ec_data_ecom." + _op, _mode); _shouldSkip {
				if _reason == "" {
					_reason = "skipped via sdk-test-control.json"
				}
				t.Skip(_reason)
				return
			}
		}
		// The basic flow consumes synthetic IDs from the fixture. In live mode
		// without an *_ENTID env override, those IDs hit the live API and 4xx.
		if setup.syntheticOnly {
			t.Skip("live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EC_DATA_ECOM_ENTID JSON to run live")
			return
		}
		client := setup.client

		// CREATE
		ecDataEcomRef01Ent := client.EcDataEcom(nil)
		ecDataEcomRef01Data := core.ToMapAny(vs.GetProp(
			vs.GetPath([]any{"new", "ec_data_ecom"}, setup.data), "ec_data_ecom_ref01"))

		ecDataEcomRef01DataResult, err := ecDataEcomRef01Ent.Create(ecDataEcomRef01Data, nil)
		if err != nil {
			t.Fatalf("create failed: %v", err)
		}
		ecDataEcomRef01Data = core.ToMapAny(entityData(ecDataEcomRef01DataResult))
		if ecDataEcomRef01Data == nil {
			t.Fatal("expected create result to be a map")
		}

	})
}

func ec_data_ecomBasicSetup(extra map[string]any) *entityTestSetup {
	loadEnvLocal()

	_, filename, _, _ := runtime.Caller(0)
	dir := filepath.Dir(filename)

	entityDataFile := filepath.Join(dir, "..", "..", ".sdk", "test", "entity", "ec_data_ecom", "EcDataEcomTestData.json")

	entityDataSource, err := os.ReadFile(entityDataFile)
	if err != nil {
		panic("failed to read ec_data_ecom test data: " + err.Error())
	}

	var entityData map[string]any
	if err := json.Unmarshal(entityDataSource, &entityData); err != nil {
		panic("failed to parse ec_data_ecom test data: " + err.Error())
	}

	options := map[string]any{}
	options["entity"] = entityData["existing"]

	client := sdk.TestSDK(options, extra)

	// Generate idmap via transform, matching TS pattern.
	idmap := vs.Transform(
		[]any{"ec_data_ecom01", "ec_data_ecom02", "ec_data_ecom03"},
		map[string]any{
			"`$PACK`": []any{"", map[string]any{
				"`$KEY`": "`$COPY`",
				"`$VAL`": []any{"`$FORMAT`", "upper", "`$COPY`"},
			}},
		},
	)

	// Detect ENTID env override before envOverride consumes it. When live
	// mode is on without a real override, the basic test runs against synthetic
	// IDs from the fixture and 4xx's. Surface this so the test can skip.
	entidEnvRaw := os.Getenv("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EC_DATA_ECOM_ENTID")
	idmapOverridden := entidEnvRaw != "" && strings.HasPrefix(strings.TrimSpace(entidEnvRaw), "{")

	env := envOverride(map[string]any{
		"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EC_DATA_ECOM_ENTID": idmap,
		"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE":      "FALSE",
		"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN":   "FALSE",
		"BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY":         "NONE",
	})

	idmapResolved := core.ToMapAny(env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EC_DATA_ECOM_ENTID"])
	if idmapResolved == nil {
		idmapResolved = core.ToMapAny(idmap)
	}

	if env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"] == "TRUE" {
		mergedOpts := vs.Merge([]any{
			map[string]any{
				"apikey": env["BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY"],
			},
			extra,
		})
		client = sdk.NewBluefinTecsMerchantServicesSDK(core.ToMapAny(mergedOpts))
	}

	live := env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE"] == "TRUE"
	return &entityTestSetup{
		client:        client,
		data:          entityData,
		idmap:         idmapResolved,
		env:           env,
		explain:       env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN"] == "TRUE",
		live:          live,
		syntheticOnly: live && !idmapOverridden,
		now:           time.Now().UnixMilli(),
	}
}
