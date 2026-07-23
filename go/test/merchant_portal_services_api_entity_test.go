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

func TestMerchantPortalServicesApiEntity(t *testing.T) {
	t.Run("instance", func(t *testing.T) {
		testsdk := sdk.TestSDK(nil, nil)
		ent := testsdk.MerchantPortalServicesApi(nil)
		if ent == nil {
			t.Fatal("expected non-nil MerchantPortalServicesApiEntity")
		}
	})

	t.Run("basic", func(t *testing.T) {
		setup := merchant_portal_services_apiBasicSetup(nil)
		// Per-op sdk-test-control.json skip — basic test exercises a flow
		// with multiple ops; skipping any op skips the whole flow.
		_mode := "unit"
		if setup.live {
			_mode = "live"
		}
		for _, _op := range []string{"create"} {
			if _shouldSkip, _reason := isControlSkipped("entityOp", "merchant_portal_services_api." + _op, _mode); _shouldSkip {
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
			t.Skip("live entity test uses synthetic IDs from fixture — set BLUEFINTECSMERCHANTSERVICES_TEST_MERCHANT_PORTAL_SERVICES_API_ENTID JSON to run live")
			return
		}
		client := setup.client

		// CREATE
		merchantPortalServicesApiRef01Ent := client.MerchantPortalServicesApi(nil)
		merchantPortalServicesApiRef01Data := core.ToMapAny(vs.GetProp(
			vs.GetPath([]any{"new", "merchant_portal_services_api"}, setup.data), "merchant_portal_services_api_ref01"))

		merchantPortalServicesApiRef01DataResult, err := merchantPortalServicesApiRef01Ent.Create(merchantPortalServicesApiRef01Data, nil)
		if err != nil {
			t.Fatalf("create failed: %v", err)
		}
		merchantPortalServicesApiRef01Data = core.ToMapAny(merchantPortalServicesApiRef01DataResult)
		if merchantPortalServicesApiRef01Data == nil {
			t.Fatal("expected create result to be a map")
		}

	})
}

func merchant_portal_services_apiBasicSetup(extra map[string]any) *entityTestSetup {
	loadEnvLocal()

	_, filename, _, _ := runtime.Caller(0)
	dir := filepath.Dir(filename)

	entityDataFile := filepath.Join(dir, "..", "..", ".sdk", "test", "entity", "merchant_portal_services_api", "MerchantPortalServicesApiTestData.json")

	entityDataSource, err := os.ReadFile(entityDataFile)
	if err != nil {
		panic("failed to read merchant_portal_services_api test data: " + err.Error())
	}

	var entityData map[string]any
	if err := json.Unmarshal(entityDataSource, &entityData); err != nil {
		panic("failed to parse merchant_portal_services_api test data: " + err.Error())
	}

	options := map[string]any{}
	options["entity"] = entityData["existing"]

	client := sdk.TestSDK(options, extra)

	// Generate idmap via transform, matching TS pattern.
	idmap := vs.Transform(
		[]any{"merchant_portal_services_api01", "merchant_portal_services_api02", "merchant_portal_services_api03"},
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
	entidEnvRaw := os.Getenv("BLUEFINTECSMERCHANTSERVICES_TEST_MERCHANT_PORTAL_SERVICES_API_ENTID")
	idmapOverridden := entidEnvRaw != "" && strings.HasPrefix(strings.TrimSpace(entidEnvRaw), "{")

	env := envOverride(map[string]any{
		"BLUEFINTECSMERCHANTSERVICES_TEST_MERCHANT_PORTAL_SERVICES_API_ENTID": idmap,
		"BLUEFINTECSMERCHANTSERVICES_TEST_LIVE":      "FALSE",
		"BLUEFINTECSMERCHANTSERVICES_TEST_EXPLAIN":   "FALSE",
		"BLUEFINTECSMERCHANTSERVICES_APIKEY":         "NONE",
	})

	idmapResolved := core.ToMapAny(env["BLUEFINTECSMERCHANTSERVICES_TEST_MERCHANT_PORTAL_SERVICES_API_ENTID"])
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
