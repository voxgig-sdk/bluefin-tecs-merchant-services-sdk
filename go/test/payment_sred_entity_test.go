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

func TestPaymentSredEntity(t *testing.T) {
	t.Run("instance", func(t *testing.T) {
		testsdk := sdk.TestSDK(nil, nil)
		ent := testsdk.PaymentSred(nil)
		if ent == nil {
			t.Fatal("expected non-nil PaymentSredEntity")
		}
	})

	t.Run("basic", func(t *testing.T) {
		setup := payment_sredBasicSetup(nil)
		// Per-op sdk-test-control.json skip — basic test exercises a flow
		// with multiple ops; skipping any op skips the whole flow.
		_mode := "unit"
		if setup.live {
			_mode = "live"
		}
		for _, _op := range []string{"create"} {
			if _shouldSkip, _reason := isControlSkipped("entityOp", "payment_sred." + _op, _mode); _shouldSkip {
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
			t.Skip("live entity test uses synthetic IDs from fixture — set BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PAYMENT_SRED_ENTID JSON to run live")
			return
		}
		client := setup.client

		// CREATE
		paymentSredRef01Ent := client.PaymentSred(nil)
		paymentSredRef01Data := core.ToMapAny(vs.GetProp(
			vs.GetPath([]any{"new", "payment_sred"}, setup.data), "payment_sred_ref01"))

		paymentSredRef01DataResult, err := paymentSredRef01Ent.Create(paymentSredRef01Data, nil)
		if err != nil {
			t.Fatalf("create failed: %v", err)
		}
		paymentSredRef01Data = core.ToMapAny(entityData(paymentSredRef01DataResult))
		if paymentSredRef01Data == nil {
			t.Fatal("expected create result to be a map")
		}

	})
}

func payment_sredBasicSetup(extra map[string]any) *entityTestSetup {
	loadEnvLocal()

	_, filename, _, _ := runtime.Caller(0)
	dir := filepath.Dir(filename)

	entityDataFile := filepath.Join(dir, "..", "..", ".sdk", "test", "entity", "payment_sred", "PaymentSredTestData.json")

	entityDataSource, err := os.ReadFile(entityDataFile)
	if err != nil {
		panic("failed to read payment_sred test data: " + err.Error())
	}

	var entityData map[string]any
	if err := json.Unmarshal(entityDataSource, &entityData); err != nil {
		panic("failed to parse payment_sred test data: " + err.Error())
	}

	options := map[string]any{}
	options["entity"] = entityData["existing"]

	client := sdk.TestSDK(options, extra)

	// Generate idmap via transform, matching TS pattern.
	idmap := vs.Transform(
		[]any{"payment_sred01", "payment_sred02", "payment_sred03"},
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
	entidEnvRaw := os.Getenv("BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PAYMENT_SRED_ENTID")
	idmapOverridden := entidEnvRaw != "" && strings.HasPrefix(strings.TrimSpace(entidEnvRaw), "{")

	env := envOverride(map[string]any{
		"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PAYMENT_SRED_ENTID": idmap,
		"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE":      "FALSE",
		"BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN":   "FALSE",
		"BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY":         "NONE",
	})

	idmapResolved := core.ToMapAny(env["BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PAYMENT_SRED_ENTID"])
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
