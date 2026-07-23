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

func TestDigitalServicesApiEntity(t *testing.T) {
	t.Run("instance", func(t *testing.T) {
		testsdk := sdk.TestSDK(nil, nil)
		ent := testsdk.DigitalServicesApi(nil)
		if ent == nil {
			t.Fatal("expected non-nil DigitalServicesApiEntity")
		}
	})

	t.Run("basic", func(t *testing.T) {
		setup := digital_services_apiBasicSetup(nil)
		// Per-op sdk-test-control.json skip — basic test exercises a flow
		// with multiple ops; skipping any op skips the whole flow.
		_mode := "unit"
		if setup.live {
			_mode = "live"
		}
		for _, _op := range []string{"create", "load"} {
			if _shouldSkip, _reason := isControlSkipped("entityOp", "digital_services_api." + _op, _mode); _shouldSkip {
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
			t.Skip("live entity test uses synthetic IDs from fixture — set BLUEFINTECSMERCHANTSERVICES_TEST_DIGITAL_SERVICES_API_ENTID JSON to run live")
			return
		}
		client := setup.client

		// CREATE
		digitalServicesApiRef01Ent := client.DigitalServicesApi(nil)
		digitalServicesApiRef01Data := core.ToMapAny(vs.GetProp(
			vs.GetPath([]any{"new", "digital_services_api"}, setup.data), "digital_services_api_ref01"))

		digitalServicesApiRef01DataResult, err := digitalServicesApiRef01Ent.Create(digitalServicesApiRef01Data, nil)
		if err != nil {
			t.Fatalf("create failed: %v", err)
		}
		digitalServicesApiRef01Data = core.ToMapAny(digitalServicesApiRef01DataResult)
		if digitalServicesApiRef01Data == nil {
			t.Fatal("expected create result to be a map")
		}

		// LOAD
		digitalServicesApiRef01MatchDt0 := map[string]any{}
		digitalServicesApiRef01DataDt0Loaded, err := digitalServicesApiRef01Ent.Load(digitalServicesApiRef01MatchDt0, nil)
		if err != nil {
			t.Fatalf("load failed: %v", err)
		}
		if digitalServicesApiRef01DataDt0Loaded == nil {
			t.Fatal("expected load result to be non-nil")
		}

	})
}

func digital_services_apiBasicSetup(extra map[string]any) *entityTestSetup {
	loadEnvLocal()

	_, filename, _, _ := runtime.Caller(0)
	dir := filepath.Dir(filename)

	entityDataFile := filepath.Join(dir, "..", "..", ".sdk", "test", "entity", "digital_services_api", "DigitalServicesApiTestData.json")

	entityDataSource, err := os.ReadFile(entityDataFile)
	if err != nil {
		panic("failed to read digital_services_api test data: " + err.Error())
	}

	var entityData map[string]any
	if err := json.Unmarshal(entityDataSource, &entityData); err != nil {
		panic("failed to parse digital_services_api test data: " + err.Error())
	}

	options := map[string]any{}
	options["entity"] = entityData["existing"]

	client := sdk.TestSDK(options, extra)

	// Generate idmap via transform, matching TS pattern.
	idmap := vs.Transform(
		[]any{"digital_services_api01", "digital_services_api02", "digital_services_api03", "mandator_clearing_export_download01", "mandator_clearing_export_download02", "mandator_clearing_export_download03"},
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
	entidEnvRaw := os.Getenv("BLUEFINTECSMERCHANTSERVICES_TEST_DIGITAL_SERVICES_API_ENTID")
	idmapOverridden := entidEnvRaw != "" && strings.HasPrefix(strings.TrimSpace(entidEnvRaw), "{")

	env := envOverride(map[string]any{
		"BLUEFINTECSMERCHANTSERVICES_TEST_DIGITAL_SERVICES_API_ENTID": idmap,
		"BLUEFINTECSMERCHANTSERVICES_TEST_LIVE":      "FALSE",
		"BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN":   "FALSE",
		"BLUEFINTECSMERCHANTSERVICES_APIKEY":         "NONE",
	})

	idmapResolved := core.ToMapAny(env["BLUEFINTECSMERCHANTSERVICES_TEST_DIGITAL_SERVICES_API_ENTID"])
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
