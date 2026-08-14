package core

import (
	"fmt"
	"strings"

	vs "github.com/voxgig-sdk/bluefin-tecs-merchant-services-sdk/go/utility/struct"
)

type BluefinTecsMerchantServicesSDK struct {
	Mode     string
	options  map[string]any
	utility  *Utility
	Features []Feature
	rootctx  *Context
}

func NewBluefinTecsMerchantServicesSDK(options map[string]any) *BluefinTecsMerchantServicesSDK {
	sdk := &BluefinTecsMerchantServicesSDK{
		Mode:     "live",
		Features: []Feature{},
	}

	sdk.utility = NewUtility()

	config := SharedConfig()

	sdk.rootctx = sdk.utility.MakeContext(map[string]any{
		"client":  sdk,
		"utility": sdk.utility,
		"config":  config,
		"options": options,
		"shared":  map[string]any{},
	}, nil)

	sdk.options = sdk.utility.MakeOptions(sdk.rootctx)

	if vs.GetPath([]any{"feature", "test", "active"}, sdk.options) == true {
		sdk.Mode = "test"
	}

	sdk.rootctx.Options = sdk.options

	// Add features in the resolved order (MakeOptions puts an explicit array
	// order first, else defaults to test-first). Ordering matters: the `test`
	// feature installs the base mock transport and the transport features
	// (retry/cache/netsim/proxy/ratelimit) wrap whatever is current, so `test`
	// must be added before them to sit at the base of the chain.
	featureOpts := ToMapAny(vs.GetProp(sdk.options, "feature"))
	if featureOpts != nil {
		if fo, ok := vs.GetPath([]any{"__derived__", "featureorder"}, sdk.options).([]any); ok {
			for _, n := range fo {
				fname, _ := n.(string)
				fopts := ToMapAny(featureOpts[fname])
				if fopts != nil {
					if active, ok := fopts["active"]; ok {
						if ab, ok := active.(bool); ok && ab {
							sdk.utility.FeatureAdd(sdk.rootctx, makeFeature(fname))
						}
					}
				}
			}
		}
	}

	// Add extension features.
	if extend := vs.GetProp(sdk.options, "extend"); extend != nil {
		if extList, ok := extend.([]any); ok {
			for _, f := range extList {
				if feat, ok := f.(Feature); ok {
					sdk.utility.FeatureAdd(sdk.rootctx, feat)
				}
			}
		}
	}

	// Initialize features.
	for _, f := range sdk.Features {
		sdk.utility.FeatureInit(sdk.rootctx, f)
	}

	sdk.utility.FeatureHook(sdk.rootctx, "PostConstruct")

	return sdk
}

func (sdk *BluefinTecsMerchantServicesSDK) OptionsMap() map[string]any {
	out := vs.Clone(sdk.options)
	if om, ok := out.(map[string]any); ok {
		return om
	}
	return map[string]any{}
}

func (sdk *BluefinTecsMerchantServicesSDK) GetUtility() *Utility {
	return CopyUtility(sdk.utility)
}

func (sdk *BluefinTecsMerchantServicesSDK) GetRootCtx() *Context {
	return sdk.rootctx
}

func (sdk *BluefinTecsMerchantServicesSDK) Prepare(fetchargs map[string]any) (map[string]any, error) {
	utility := sdk.utility

	if fetchargs == nil {
		fetchargs = map[string]any{}
	}

	var ctrl map[string]any
	if c := vs.GetProp(fetchargs, "ctrl"); c != nil {
		if cm, ok := c.(map[string]any); ok {
			ctrl = cm
		}
	}
	if ctrl == nil {
		ctrl = map[string]any{}
	}

	ctx := utility.MakeContext(map[string]any{
		"opname": "prepare",
		"ctrl":   ctrl,
	}, sdk.rootctx)

	options := sdk.options

	path, _ := vs.GetProp(fetchargs, "path").(string)
	method, _ := vs.GetProp(fetchargs, "method").(string)
	if method == "" {
		method = "GET"
	}

	params := ToMapAny(vs.GetProp(fetchargs, "params"))
	if params == nil {
		params = map[string]any{}
	}
	query := ToMapAny(vs.GetProp(fetchargs, "query"))
	if query == nil {
		query = map[string]any{}
	}

	headers := utility.PrepareHeaders(ctx)

	base, _ := vs.GetProp(options, "base").(string)
	prefix, _ := vs.GetProp(options, "prefix").(string)
	suffix, _ := vs.GetProp(options, "suffix").(string)

	ctx.Spec = NewSpec(map[string]any{
		"base":    base,
		"prefix":  prefix,
		"suffix":  suffix,
		"path":    path,
		"method":  method,
		"params":  params,
		"query":   query,
		"headers": headers,
		"body":    vs.GetProp(fetchargs, "body"),
		"step":    "start",
	})

	// Merge user-provided headers.
	if uh := vs.GetProp(fetchargs, "headers"); uh != nil {
		if uhm, ok := uh.(map[string]any); ok {
			for k, v := range uhm {
				ctx.Spec.Headers[k] = v
			}
		}
	}

	_, err := utility.PrepareAuth(ctx)
	if err != nil {
		return nil, err
	}

	return utility.MakeFetchDef(ctx)
}

// Raw endpoint access is operator-controllable, like every entity op.
// Blocking it means denying BOTH the 'direct' and 'graphql' tokens, since
// either one reaches the same endpoint.
func (sdk *BluefinTecsMerchantServicesSDK) Direct(fetchargs map[string]any) (map[string]any, error) {
	if !sdk.opAllowed("direct") {
		return sdk.opDenied("direct"), nil
	}

	return sdk.rawRequest(fetchargs)
}

// Is this raw-access op permitted by the SDK's allow.op option?
func (sdk *BluefinTecsMerchantServicesSDK) opAllowed(op string) bool {
	allowOp, _ := vs.GetPath([]any{"allow", "op"}, sdk.options).(string)
	return strings.Contains(allowOp, op)
}

func (sdk *BluefinTecsMerchantServicesSDK) opDenied(op string) map[string]any {
	allowOp, _ := vs.GetPath([]any{"allow", "op"}, sdk.options).(string)
	return map[string]any{
		"ok": false,
		"err": fmt.Errorf("BluefinTecsMerchantServicesSDK: %s: operation not allowed by"+
			" SDK option allow.op value: \"%s\"", op, allowOp),
	}
}

// Ungated request path shared by Direct and Graphql, each of which checks
// its own allow.op token first. Unexported, rather than a flag on fetchargs:
// a caller-supplied marker would let anyone opt straight back out of the
// gate by passing it.
func (sdk *BluefinTecsMerchantServicesSDK) rawRequest(fetchargs map[string]any) (map[string]any, error) {
	utility := sdk.utility

	fetchdef, err := sdk.Prepare(fetchargs)
	if err != nil {
		return map[string]any{"ok": false, "err": err}, nil
	}

	if fetchargs == nil {
		fetchargs = map[string]any{}
	}

	var ctrl map[string]any
	if c := vs.GetProp(fetchargs, "ctrl"); c != nil {
		if cm, ok := c.(map[string]any); ok {
			ctrl = cm
		}
	}
	if ctrl == nil {
		ctrl = map[string]any{}
	}

	ctx := utility.MakeContext(map[string]any{
		"opname": "direct",
		"ctrl":   ctrl,
	}, sdk.rootctx)

	url, _ := fetchdef["url"].(string)
	fetched, fetchErr := utility.Fetcher(ctx, url, fetchdef)

	if fetchErr != nil {
		return map[string]any{"ok": false, "err": fetchErr}, nil
	}

	if fetched == nil {
		return map[string]any{
			"ok":  false,
			"err": ctx.MakeError("direct_no_response", "response: undefined"),
		}, nil
	}

	if fm, ok := fetched.(map[string]any); ok {
		status := ToInt(vs.GetProp(fm, "status"))
		headers := vs.GetProp(fm, "headers")

		// No-body responses (204, 304) and explicit zero content-length
		// must skip JSON parsing — calling json() on an empty body errors.
		var contentLength string
		if hm, ok := headers.(map[string]any); ok {
			if cl, ok := hm["content-length"]; ok {
				contentLength = fmt.Sprintf("%v", cl)
			}
		}
		noBody := status == 204 || status == 304 || contentLength == "0"

		var jsonData any
		if !noBody {
			if jf := vs.GetProp(fm, "json"); jf != nil {
				if f, ok := jf.(func() any); ok {
					// f() returns nil on parse error in our fetcher.
					jsonData = f()
				}
			}
		}

		return map[string]any{
			"ok":      status >= 200 && status < 300,
			"status":  status,
			"headers": headers,
			"data":    jsonData,
		}, nil
	}

	return map[string]any{"ok": false, "err": ctx.MakeError("direct_invalid", "invalid response type")}, nil
}

// Raw GraphQL access: the pressure valve that makes the generated surface's
// deliberate omissions (per-call selection sets, typed filter builders,
// batching, subscriptions) livable — the whole schema stays reachable.
//
// Thin wrapper over the same prepare/fetch path Direct uses, with the one
// thing raw Direct cannot do for GraphQL: a GraphQL failure rides HTTP 200
// as a top-level `errors` array, so status alone would report a failed query
// as ok.
//
// NOTE: like Direct, this bypasses the feature pipeline — no retry,
// ratelimit or paging features apply.
func (sdk *BluefinTecsMerchantServicesSDK) Graphql(
	query string, variables map[string]any, ctrl map[string]any,
) (map[string]any, error) {
	if !sdk.opAllowed("graphql") {
		return sdk.opDenied("graphql"), nil
	}

	if variables == nil {
		variables = map[string]any{}
	}
	if ctrl == nil {
		ctrl = map[string]any{}
	}

	res, err := sdk.rawRequest(map[string]any{
		"method":  "POST",
		"headers": map[string]any{"content-type": "application/json"},
		"body":    map[string]any{"query": query, "variables": variables},
		"ctrl":    ctrl,
	})

	if err != nil {
		return res, err
	}

	// Errors are read BEFORE any status check: a GraphQL parse or validation
	// failure comes back as HTTP 400 carrying the standard { errors: [...] }
	// body, and the raw path represents a non-2xx as ok:false with no err —
	// so returning early on status would discard the server's own
	// diagnostics, which are the only useful part of that response.
	errors, _ := vs.GetPath([]any{"data", "errors"}, res).([]any)

	if 0 < len(errors) {
		msg, _ := vs.GetProp(errors[0], "message").(string)
		if msg == "" {
			msg = "graphql error"
		}
		res["ok"] = false
		res["err"] = fmt.Errorf("BluefinTecsMerchantServicesSDK: graphql: %s", msg)
		res["graphql"] = errors
	}

	return res, nil
}


// CancelTransaction returns a CancelTransaction entity bound to this client.
// Idiomatic usage: client.CancelTransaction(nil).List(nil, nil) or
// client.CancelTransaction(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) CancelTransaction(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewCancelTransactionEntityFunc(sdk, data)
}


// CheckCardBlackListed returns a CheckCardBlackListed entity bound to this client.
// Idiomatic usage: client.CheckCardBlackListed(nil).List(nil, nil) or
// client.CheckCardBlackListed(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) CheckCardBlackListed(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewCheckCardBlackListedEntityFunc(sdk, data)
}


// CreateProduct returns a CreateProduct entity bound to this client.
// Idiomatic usage: client.CreateProduct(nil).List(nil, nil) or
// client.CreateProduct(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) CreateProduct(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewCreateProductEntityFunc(sdk, data)
}


// DeactivateTerminal returns a DeactivateTerminal entity bound to this client.
// Idiomatic usage: client.DeactivateTerminal(nil).List(nil, nil) or
// client.DeactivateTerminal(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) DeactivateTerminal(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewDeactivateTerminalEntityFunc(sdk, data)
}


// DigitalServicesApi returns a DigitalServicesApi entity bound to this client.
// Idiomatic usage: client.DigitalServicesApi(nil).List(nil, nil) or
// client.DigitalServicesApi(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) DigitalServicesApi(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewDigitalServicesApiEntityFunc(sdk, data)
}


// EcDataEcom returns a EcDataEcom entity bound to this client.
// Idiomatic usage: client.EcDataEcom(nil).List(nil, nil) or
// client.EcDataEcom(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) EcDataEcom(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewEcDataEcomEntityFunc(sdk, data)
}


// EcomParameter returns a EcomParameter entity bound to this client.
// Idiomatic usage: client.EcomParameter(nil).List(nil, nil) or
// client.EcomParameter(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) EcomParameter(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewEcomParameterEntityFunc(sdk, data)
}


// EcrData returns a EcrData entity bound to this client.
// Idiomatic usage: client.EcrData(nil).List(nil, nil) or
// client.EcrData(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) EcrData(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewEcrDataEntityFunc(sdk, data)
}


// EmvData returns a EmvData entity bound to this client.
// Idiomatic usage: client.EmvData(nil).List(nil, nil) or
// client.EmvData(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) EmvData(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewEmvDataEntityFunc(sdk, data)
}


// EnableAcquiring returns a EnableAcquiring entity bound to this client.
// Idiomatic usage: client.EnableAcquiring(nil).List(nil, nil) or
// client.EnableAcquiring(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) EnableAcquiring(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewEnableAcquiringEntityFunc(sdk, data)
}


// GetMerchantContractNumber returns a GetMerchantContractNumber entity bound to this client.
// Idiomatic usage: client.GetMerchantContractNumber(nil).List(nil, nil) or
// client.GetMerchantContractNumber(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) GetMerchantContractNumber(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewGetMerchantContractNumberEntityFunc(sdk, data)
}


// GetTemplateXml returns a GetTemplateXml entity bound to this client.
// Idiomatic usage: client.GetTemplateXml(nil).List(nil, nil) or
// client.GetTemplateXml(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) GetTemplateXml(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewGetTemplateXmlEntityFunc(sdk, data)
}


// IntroduceMandator returns a IntroduceMandator entity bound to this client.
// Idiomatic usage: client.IntroduceMandator(nil).List(nil, nil) or
// client.IntroduceMandator(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) IntroduceMandator(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewIntroduceMandatorEntityFunc(sdk, data)
}


// IntroducePackage returns a IntroducePackage entity bound to this client.
// Idiomatic usage: client.IntroducePackage(nil).List(nil, nil) or
// client.IntroducePackage(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) IntroducePackage(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewIntroducePackageEntityFunc(sdk, data)
}


// KeepAlive returns a KeepAlive entity bound to this client.
// Idiomatic usage: client.KeepAlive(nil).List(nil, nil) or
// client.KeepAlive(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) KeepAlive(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewKeepAliveEntityFunc(sdk, data)
}


// ListTerminal returns a ListTerminal entity bound to this client.
// Idiomatic usage: client.ListTerminal(nil).List(nil, nil) or
// client.ListTerminal(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) ListTerminal(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewListTerminalEntityFunc(sdk, data)
}


// MandatorClearingExport returns a MandatorClearingExport entity bound to this client.
// Idiomatic usage: client.MandatorClearingExport(nil).List(nil, nil) or
// client.MandatorClearingExport(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) MandatorClearingExport(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewMandatorClearingExportEntityFunc(sdk, data)
}


// MandatorClearingExportDownload returns a MandatorClearingExportDownload entity bound to this client.
// Idiomatic usage: client.MandatorClearingExportDownload(nil).List(nil, nil) or
// client.MandatorClearingExportDownload(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) MandatorClearingExportDownload(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewMandatorClearingExportDownloadEntityFunc(sdk, data)
}


// MandatorClearingExportSummary returns a MandatorClearingExportSummary entity bound to this client.
// Idiomatic usage: client.MandatorClearingExportSummary(nil).List(nil, nil) or
// client.MandatorClearingExportSummary(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) MandatorClearingExportSummary(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewMandatorClearingExportSummaryEntityFunc(sdk, data)
}


// MerchantPortalServicesApi returns a MerchantPortalServicesApi entity bound to this client.
// Idiomatic usage: client.MerchantPortalServicesApi(nil).List(nil, nil) or
// client.MerchantPortalServicesApi(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) MerchantPortalServicesApi(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewMerchantPortalServicesApiEntityFunc(sdk, data)
}


// MoveTid returns a MoveTid entity bound to this client.
// Idiomatic usage: client.MoveTid(nil).List(nil, nil) or
// client.MoveTid(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) MoveTid(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewMoveTidEntityFunc(sdk, data)
}


// PaymentManual returns a PaymentManual entity bound to this client.
// Idiomatic usage: client.PaymentManual(nil).List(nil, nil) or
// client.PaymentManual(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) PaymentManual(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewPaymentManualEntityFunc(sdk, data)
}


// PaymentSred returns a PaymentSred entity bound to this client.
// Idiomatic usage: client.PaymentSred(nil).List(nil, nil) or
// client.PaymentSred(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) PaymentSred(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewPaymentSredEntityFunc(sdk, data)
}


// PreAuthTransactionCompletion returns a PreAuthTransactionCompletion entity bound to this client.
// Idiomatic usage: client.PreAuthTransactionCompletion(nil).List(nil, nil) or
// client.PreAuthTransactionCompletion(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) PreAuthTransactionCompletion(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewPreAuthTransactionCompletionEntityFunc(sdk, data)
}


// ReactivateTerminal returns a ReactivateTerminal entity bound to this client.
// Idiomatic usage: client.ReactivateTerminal(nil).List(nil, nil) or
// client.ReactivateTerminal(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) ReactivateTerminal(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewReactivateTerminalEntityFunc(sdk, data)
}


// RefundTransaction returns a RefundTransaction entity bound to this client.
// Idiomatic usage: client.RefundTransaction(nil).List(nil, nil) or
// client.RefundTransaction(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) RefundTransaction(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewRefundTransactionEntityFunc(sdk, data)
}


// RegisterTecsCompany returns a RegisterTecsCompany entity bound to this client.
// Idiomatic usage: client.RegisterTecsCompany(nil).List(nil, nil) or
// client.RegisterTecsCompany(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) RegisterTecsCompany(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewRegisterTecsCompanyEntityFunc(sdk, data)
}


// RegisterTerminal returns a RegisterTerminal entity bound to this client.
// Idiomatic usage: client.RegisterTerminal(nil).List(nil, nil) or
// client.RegisterTerminal(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) RegisterTerminal(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewRegisterTerminalEntityFunc(sdk, data)
}


// ReportData returns a ReportData entity bound to this client.
// Idiomatic usage: client.ReportData(nil).List(nil, nil) or
// client.ReportData(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) ReportData(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewReportDataEntityFunc(sdk, data)
}


// StatusTransaction returns a StatusTransaction entity bound to this client.
// Idiomatic usage: client.StatusTransaction(nil).List(nil, nil) or
// client.StatusTransaction(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) StatusTransaction(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewStatusTransactionEntityFunc(sdk, data)
}


// StoreTerminalParameter returns a StoreTerminalParameter entity bound to this client.
// Idiomatic usage: client.StoreTerminalParameter(nil).List(nil, nil) or
// client.StoreTerminalParameter(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) StoreTerminalParameter(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewStoreTerminalParameterEntityFunc(sdk, data)
}


// TerminalId returns a TerminalId entity bound to this client.
// Idiomatic usage: client.TerminalId(nil).List(nil, nil) or
// client.TerminalId(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) TerminalId(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewTerminalIdEntityFunc(sdk, data)
}


// TransactionHistory returns a TransactionHistory entity bound to this client.
// Idiomatic usage: client.TransactionHistory(nil).List(nil, nil) or
// client.TransactionHistory(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) TransactionHistory(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewTransactionHistoryEntityFunc(sdk, data)
}


// TransactionsCount returns a TransactionsCount entity bound to this client.
// Idiomatic usage: client.TransactionsCount(nil).List(nil, nil) or
// client.TransactionsCount(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) TransactionsCount(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewTransactionsCountEntityFunc(sdk, data)
}


// TransactionsCountCardBrand returns a TransactionsCountCardBrand entity bound to this client.
// Idiomatic usage: client.TransactionsCountCardBrand(nil).List(nil, nil) or
// client.TransactionsCountCardBrand(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) TransactionsCountCardBrand(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewTransactionsCountCardBrandEntityFunc(sdk, data)
}


// TransactionsTurnover returns a TransactionsTurnover entity bound to this client.
// Idiomatic usage: client.TransactionsTurnover(nil).List(nil, nil) or
// client.TransactionsTurnover(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) TransactionsTurnover(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewTransactionsTurnoverEntityFunc(sdk, data)
}


// UpdateMerchant returns a UpdateMerchant entity bound to this client.
// Idiomatic usage: client.UpdateMerchant(nil).List(nil, nil) or
// client.UpdateMerchant(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) UpdateMerchant(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewUpdateMerchantEntityFunc(sdk, data)
}


// UpdateTemplateXml returns a UpdateTemplateXml entity bound to this client.
// Idiomatic usage: client.UpdateTemplateXml(nil).List(nil, nil) or
// client.UpdateTemplateXml(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) UpdateTemplateXml(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewUpdateTemplateXmlEntityFunc(sdk, data)
}


// Version returns a Version entity bound to this client.
// Idiomatic usage: client.Version(nil).List(nil, nil) or
// client.Version(nil).Load(map[string]any{"id": ...}, nil).
func (sdk *BluefinTecsMerchantServicesSDK) Version(data map[string]any) BluefinTecsMerchantServicesEntity {
	return NewVersionEntityFunc(sdk, data)
}



func TestSDK(testopts map[string]any, sdkopts map[string]any) *BluefinTecsMerchantServicesSDK {
	if sdkopts == nil {
		sdkopts = map[string]any{}
	}
	sdkopts = vs.Clone(sdkopts).(map[string]any)

	if testopts == nil {
		testopts = map[string]any{}
	}
	testopts = vs.Clone(testopts).(map[string]any)
	testopts["active"] = true

	vs.SetPath(sdkopts, []any{"feature", "test"}, testopts)

	sdk := NewBluefinTecsMerchantServicesSDK(sdkopts)
	sdk.Mode = "test"

	return sdk
}
