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

func TestRegisterTecsCompanyEntity(t *testing.T) {
	t.Run("instance", func(t *testing.T) {
		testsdk := sdk.TestSDK(nil, nil)
		ent := testsdk.RegisterTecsCompany(nil)
		if ent == nil {
			t.Fatal("expected non-nil RegisterTecsCompanyEntity")
		}
	})

	t.Run("basic", func(t *testing.T) {
		setup := register_tecs_companyBasicSetup(nil)
		// Per-op sdk-test-control.json skip — basic test exercises a flow
		// with multiple ops; skipping any op skips the whole flow.
		_mode := "unit"
		if setup.live {
			_mode = "live"
		}
		for _, _op := range []string{"create"} {
			if _shouldSkip, _reason := isControlSkipped("entityOp", "register_tecs_company." + _op, _mode); _shouldSkip {
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
			t.Skip("live entity test uses synthetic IDs from fixture — set BLUEFINTECSMERCHANTSERVICES_TEST_REGISTER_TECS_COMPANY_ENTID JSON to run live")
			return
		}
		client := setup.client

		// CREATE
		registerTecsCompanyRef01Ent := client.RegisterTecsCompany(nil)
		registerTecsCompanyRef01Data := core.ToMapAny(vs.GetProp(
			vs.GetPath([]any{"new", "register_tecs_company"}, setup.data), "register_tecs_company_ref01"))

		registerTecsCompanyRef01DataResult, err := registerTecsCompanyRef01Ent.Create(registerTecsCompanyRef01Data, nil)
		if err != nil {
			t.Fatalf("create failed: %v", err)
		}
		registerTecsCompanyRef01Data = core.ToMapAny(registerTecsCompanyRef01DataResult)
		if registerTecsCompanyRef01Data == nil {
			t.Fatal("expected create result to be a map")
		}

	})
}

func register_tecs_companyBasicSetup(extra map[string]any) *entityTestSetup {
	loadEnvLocal()

	_, filename, _, _ := runtime.Caller(0)
	dir := filepath.Dir(filename)

	entityDataFile := filepath.Join(dir, "..", "..", ".sdk", "test", "entity", "register_tecs_company", "RegisterTecsCompanyTestData.json")

	entityDataSource, err := os.ReadFile(entityDataFile)
	if err != nil {
		panic("failed to read register_tecs_company test data: " + err.Error())
	}

	var entityData map[string]any
	if err := json.Unmarshal(entityDataSource, &entityData); err != nil {
		panic("failed to parse register_tecs_company test data: " + err.Error())
	}

	options := map[string]any{}
	options["entity"] = entityData["existing"]

	client := sdk.TestSDK(options, extra)

	// Generate idmap via transform, matching TS pattern.
	idmap := vs.Transform(
		[]any{"register_tecs_company01", "register_tecs_company02", "register_tecs_company03"},
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
	entidEnvRaw := os.Getenv("BLUEFINTECSMERCHANTSERVICES_TEST_REGISTER_TECS_COMPANY_ENTID")
	idmapOverridden := entidEnvRaw != "" && strings.HasPrefix(strings.TrimSpace(entidEnvRaw), "{")

	env := envOverride(map[string]any{
		"BLUEFINTECSMERCHANTSERVICES_TEST_REGISTER_TECS_COMPANY_ENTID": idmap,
		"BLUEFINTECSMERCHANTSERVICES_TEST_LIVE":      "FALSE",
		"BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN":   "FALSE",
		"BLUEFINTECSMERCHANTSERVICES_APIKEY":         "NONE",
	})

	idmapResolved := core.ToMapAny(env["BLUEFINTECSMERCHANTSERVICES_TEST_REGISTER_TECS_COMPANY_ENTID"])
	if idmapResolved == nil {
		idmapResolved = core.ToMapAny(idmap)
	}

	if env["BLUEFINTECSMERCHANTSERVICES_TEST_LIVE"] == "TRUE" {
		mergedOpts := vs.Merge([]any{
			map[string]any{
				"apikey": env["BLUEFINTECSMERCHANTSERVICES_APIKEY"],
			},
			extra,
		})
		client = sdk.NewBluefinTecsMerchantServicesSDK(core.ToMapAny(mergedOpts))
	}

	live := env["BLUEFINTECSMERCHANTSERVICES_TEST_LIVE"] == "TRUE"
	return &entityTestSetup{
		client:        client,
		data:          entityData,
		idmap:         idmapResolved,
		env:           env,
		explain:       env["BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN"] == "TRUE",
		live:          live,
		syntheticOnly: live && !idmapOverridden,
		now:           time.Now().UnixMilli(),
	}
}
