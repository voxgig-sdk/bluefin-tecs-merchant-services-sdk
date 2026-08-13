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

func TestGetMerchantContractNumberEntity(t *testing.T) {
	t.Run("instance", func(t *testing.T) {
		testsdk := sdk.TestSDK(nil, nil)
		ent := testsdk.GetMerchantContractNumber(nil)
		if ent == nil {
			t.Fatal("expected non-nil GetMerchantContractNumberEntity")
		}
	})

	t.Run("basic", func(t *testing.T) {
		setup := get_merchant_contract_numberBasicSetup(nil)
		// Per-op sdk-test-control.json skip — basic test exercises a flow
		// with multiple ops; skipping any op skips the whole flow.
		_mode := "unit"
		if setup.live {
			_mode = "live"
		}
		for _, _op := range []string{"create"} {
			if _shouldSkip, _reason := isControlSkipped("entityOp", "get_merchant_contract_number." + _op, _mode); _shouldSkip {
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
			t.Skip("live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_GET_MERCHANT_CONTRACT_NUMBER_ENTID JSON to run live")
			return
		}
		client := setup.client

		// CREATE
		getMerchantContractNumberRef01Ent := client.GetMerchantContractNumber(nil)
		getMerchantContractNumberRef01Data := core.ToMapAny(vs.GetProp(
			vs.GetPath([]any{"new", "get_merchant_contract_number"}, setup.data), "get_merchant_contract_number_ref01"))

		getMerchantContractNumberRef01DataResult, err := getMerchantContractNumberRef01Ent.Create(getMerchantContractNumberRef01Data, nil)
		if err != nil {
			t.Fatalf("create failed: %v", err)
		}
		getMerchantContractNumberRef01Data = core.ToMapAny(entityData(getMerchantContractNumberRef01DataResult))
		if getMerchantContractNumberRef01Data == nil {
			t.Fatal("expected create result to be a map")
		}

	})
}

func get_merchant_contract_numberBasicSetup(extra map[string]any) *entityTestSetup {
	loadEnvLocal()

	_, filename, _, _ := runtime.Caller(0)
	dir := filepath.Dir(filename)

	entityDataFile := filepath.Join(dir, "..", "..", ".sdk", "test", "entity", "get_merchant_contract_number", "GetMerchantContractNumberTestData.json")

	entityDataSource, err := os.ReadFile(entityDataFile)
	if err != nil {
		panic("failed to read get_merchant_contract_number test data: " + err.Error())
	}

	var entityData map[string]any
	if err := json.Unmarshal(entityDataSource, &entityData); err != nil {
		panic("failed to parse get_merchant_contract_number test data: " + err.Error())
	}

	options := map[string]any{}
	options["entity"] = entityData["existing"]

	client := sdk.TestSDK(options, extra)

	// Generate idmap via transform, matching TS pattern.
	idmap := vs.Transform(
		[]any{"get_merchant_contract_number01", "get_merchant_contract_number02", "get_merchant_contract_number03"},
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
	entidEnvRaw := os.Getenv("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_GET_MERCHANT_CONTRACT_NUMBER_ENTID")
	idmapOverridden := entidEnvRaw != "" && strings.HasPrefix(strings.TrimSpace(entidEnvRaw), "{")

	env := envOverride(map[string]any{
		"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_GET_MERCHANT_CONTRACT_NUMBER_ENTID": idmap,
		"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE":      "FALSE",
		"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN":   "FALSE",
		"BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY":         "NONE",
	})

	idmapResolved := core.ToMapAny(env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_GET_MERCHANT_CONTRACT_NUMBER_ENTID"])
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
