"use strict";
// BluefinTecsMerchantServices Ts SDK
Object.defineProperty(exports, "__esModule", { value: true });
exports.SDK = exports.BluefinTecsMerchantServicesSDK = exports.BluefinTecsMerchantServicesEntityBase = exports.BaseFeature = exports.config = exports.stdutil = void 0;
const CancelTransactionEntity_1 = require("./entity/CancelTransactionEntity");
const CheckCardBlackListedEntity_1 = require("./entity/CheckCardBlackListedEntity");
const CreateProductEntity_1 = require("./entity/CreateProductEntity");
const DeactivateTerminalEntity_1 = require("./entity/DeactivateTerminalEntity");
const DigitalServicesApiEntity_1 = require("./entity/DigitalServicesApiEntity");
const EcDataEcomEntity_1 = require("./entity/EcDataEcomEntity");
const EcomParameterEntity_1 = require("./entity/EcomParameterEntity");
const EcrDataEntity_1 = require("./entity/EcrDataEntity");
const EmvDataEntity_1 = require("./entity/EmvDataEntity");
const EnableAcquiringEntity_1 = require("./entity/EnableAcquiringEntity");
const GetMerchantContractNumberEntity_1 = require("./entity/GetMerchantContractNumberEntity");
const GetTemplateXmlEntity_1 = require("./entity/GetTemplateXmlEntity");
const IntroduceMandatorEntity_1 = require("./entity/IntroduceMandatorEntity");
const IntroducePackageEntity_1 = require("./entity/IntroducePackageEntity");
const KeepAliveEntity_1 = require("./entity/KeepAliveEntity");
const ListTerminalEntity_1 = require("./entity/ListTerminalEntity");
const MandatorClearingExportEntity_1 = require("./entity/MandatorClearingExportEntity");
const MandatorClearingExportDownloadEntity_1 = require("./entity/MandatorClearingExportDownloadEntity");
const MandatorClearingExportSummaryEntity_1 = require("./entity/MandatorClearingExportSummaryEntity");
const MerchantPortalServicesApiEntity_1 = require("./entity/MerchantPortalServicesApiEntity");
const MoveTidEntity_1 = require("./entity/MoveTidEntity");
const PaymentManualEntity_1 = require("./entity/PaymentManualEntity");
const PaymentSredEntity_1 = require("./entity/PaymentSredEntity");
const PreAuthTransactionCompletionEntity_1 = require("./entity/PreAuthTransactionCompletionEntity");
const ReactivateTerminalEntity_1 = require("./entity/ReactivateTerminalEntity");
const RefundTransactionEntity_1 = require("./entity/RefundTransactionEntity");
const RegisterTecsCompanyEntity_1 = require("./entity/RegisterTecsCompanyEntity");
const RegisterTerminalEntity_1 = require("./entity/RegisterTerminalEntity");
const ReportDataEntity_1 = require("./entity/ReportDataEntity");
const StatusTransactionEntity_1 = require("./entity/StatusTransactionEntity");
const StoreTerminalParameterEntity_1 = require("./entity/StoreTerminalParameterEntity");
const TerminalIdEntity_1 = require("./entity/TerminalIdEntity");
const TransactionHistoryEntity_1 = require("./entity/TransactionHistoryEntity");
const TransactionsCountEntity_1 = require("./entity/TransactionsCountEntity");
const TransactionsCountCardBrandEntity_1 = require("./entity/TransactionsCountCardBrandEntity");
const TransactionsTurnoverEntity_1 = require("./entity/TransactionsTurnoverEntity");
const UpdateMerchantEntity_1 = require("./entity/UpdateMerchantEntity");
const UpdateTemplateXmlEntity_1 = require("./entity/UpdateTemplateXmlEntity");
const VersionEntity_1 = require("./entity/VersionEntity");
const node_util_1 = require("node:util");
const Config_1 = require("./Config");
Object.defineProperty(exports, "config", { enumerable: true, get: function () { return Config_1.config; } });
const BluefinTecsMerchantServicesEntityBase_1 = require("./BluefinTecsMerchantServicesEntityBase");
Object.defineProperty(exports, "BluefinTecsMerchantServicesEntityBase", { enumerable: true, get: function () { return BluefinTecsMerchantServicesEntityBase_1.BluefinTecsMerchantServicesEntityBase; } });
const Utility_1 = require("./utility/Utility");
const BaseFeature_1 = require("./feature/base/BaseFeature");
Object.defineProperty(exports, "BaseFeature", { enumerable: true, get: function () { return BaseFeature_1.BaseFeature; } });
const stdutil = new Utility_1.Utility();
exports.stdutil = stdutil;
class BluefinTecsMerchantServicesSDK {
    _mode = 'live';
    _options;
    _utility = new Utility_1.Utility();
    _features;
    _rootctx;
    constructor(options) {
        this._rootctx = this._utility.makeContext({
            client: this,
            utility: this._utility,
            config: Config_1.config,
            options,
            shared: new WeakMap()
        });
        this._options = this._utility.makeOptions(this._rootctx);
        const struct = this._utility.struct;
        const getpath = struct.getpath;
        if (true === getpath(this._options.feature, 'test.active')) {
            this._mode = 'test';
        }
        this._rootctx.options = this._options;
        this._features = [];
        const featureAdd = this._utility.featureAdd;
        const featureInit = this._utility.featureInit;
        // Add features in the resolved order (makeOptions puts an explicit
        // array order first, else defaults to test-first). Ordering matters:
        // the `test` feature installs the base mock transport and the transport
        // features (retry/cache/netsim/proxy/ratelimit) wrap whatever is current,
        // so `test` must be added before them to sit at the base of the chain.
        const extend = this._options.extend || [];
        const featureorder = getpath(this._options, '__derived__.featureorder') || [];
        for (const fname of featureorder) {
            const fopts = this._options.feature[fname] || {};
            if (fopts.active) {
                // An active name with no generated class is legal when an
                // extend-supplied instance carries that name (station's adopt
                // path): the instance is added below, positioned by its own
                // __after__ entry, so skip it here rather than fail construction.
                if (!this._rootctx.config.hasFeature(fname) &&
                    extend.some((f) => fname === f.name)) {
                    continue;
                }
                featureAdd(this._rootctx, this._rootctx.config.makeFeature(fname));
            }
        }
        for (let f of extend) {
            featureAdd(this._rootctx, f);
        }
        for (let f of this._features) {
            featureInit(this._rootctx, f);
        }
        const featureHook = this._utility.featureHook;
        featureHook(this._rootctx, 'PostConstruct');
    }
    options() {
        return this._utility.struct.clone(this._options);
    }
    utility() {
        return this._utility.struct.clone(this._utility);
    }
    async prepare(fetchargs) {
        const utility = this._utility;
        const struct = utility.struct;
        const clone = struct.clone;
        const { makeContext, makeFetchDef, prepareHeaders, prepareAuth, } = utility;
        fetchargs = fetchargs || {};
        let ctx = makeContext({
            opname: 'prepare',
            ctrl: fetchargs.ctrl || {},
        }, this._rootctx);
        const options = this._options;
        // Build spec directly from SDK options + user-provided fetch args.
        const spec = {
            base: options.base,
            prefix: options.prefix,
            suffix: options.suffix,
            path: fetchargs.path || '',
            method: fetchargs.method || 'GET',
            params: fetchargs.params || {},
            query: fetchargs.query || {},
            headers: prepareHeaders(ctx),
            body: fetchargs.body,
            step: 'start',
        };
        ctx.spec = spec;
        // Merge user-provided headers over SDK defaults.
        if (fetchargs.headers) {
            const uheaders = fetchargs.headers;
            for (let key in uheaders) {
                spec.headers[key] = uheaders[key];
            }
        }
        // Apply SDK auth (apikey, auth prefix, etc.)
        const authResult = prepareAuth(ctx);
        if (authResult instanceof Error) {
            return authResult;
        }
        return makeFetchDef(ctx);
    }
    // Raw endpoint access is operator-controllable, like every entity op.
    // Blocking it means denying BOTH the 'direct' and 'graphql' tokens, since
    // either one reaches the same endpoint.
    async direct(fetchargs) {
        if (!this._options.allow.op.includes('direct')) {
            return {
                ok: false,
                err: new Error('BluefinTecsMerchantServicesSDK: direct: operation not allowed by' +
                    ' SDK option allow.op value: "' + this._options.allow.op + '"'),
            };
        }
        return this._rawRequest(fetchargs);
    }
    // Ungated request path shared by direct() and graphql(), each of which
    // checks its own allow.op token first. Private, rather than a flag on
    // fetchargs: a caller-supplied marker would let anyone opt straight back
    // out of the gate by passing it.
    async _rawRequest(fetchargs) {
        const utility = this._utility;
        const fetcher = utility.fetcher;
        const makeContext = utility.makeContext;
        const fetchdef = await this.prepare(fetchargs);
        if (fetchdef instanceof Error) {
            return fetchdef;
        }
        let ctx = makeContext({
            opname: 'direct',
            ctrl: (fetchargs || {}).ctrl || {},
        }, this._rootctx);
        try {
            const fetched = await fetcher(ctx, fetchdef.url, fetchdef);
            if (null == fetched) {
                return { ok: false, err: ctx.error('direct_no_response', 'response: undefined') };
            }
            else if (fetched instanceof Error) {
                return { ok: false, err: fetched };
            }
            const status = fetched.status;
            // No body responses (204 No Content, 304 Not Modified) and explicit
            // zero content-length must skip JSON parsing — fetched.json() would
            // throw `Unexpected end of JSON input` on an empty body.
            const headers = fetched.headers;
            const contentLength = headers && 'function' === typeof headers.get
                ? headers.get('content-length')
                : (headers || {})['content-length'];
            const noBody = 204 === status || 304 === status || '0' === String(contentLength);
            let json = undefined;
            if (!noBody) {
                try {
                    json = 'function' === typeof fetched.json ? await fetched.json() : fetched.json;
                }
                catch (parseErr) {
                    // Body wasn't valid JSON — surface the raw response rather than
                    // throwing. data stays undefined; callers can inspect status/headers.
                    json = undefined;
                }
            }
            return {
                ok: status >= 200 && status < 300,
                status,
                headers: fetched.headers,
                data: json,
            };
        }
        catch (err) {
            return { ok: false, err };
        }
    }
    // Raw GraphQL access: the pressure valve that makes the generated
    // surface's deliberate omissions (per-call selection sets, typed filter
    // builders, batching, subscriptions) livable — the whole schema stays
    // reachable.
    //
    // Thin wrapper over the same prepare/fetch path `direct` uses, with the
    // one thing raw `direct` cannot do for GraphQL: a GraphQL failure rides
    // HTTP 200 as a top-level `errors` array, so status alone would report a
    // failed query as ok.
    //
    // NOTE: like `direct`, this bypasses the feature pipeline — no retry,
    // ratelimit or paging features apply.
    async graphql(query, variables, ctrl) {
        const options = this._options;
        if (!options.allow.op.includes('graphql')) {
            return {
                ok: false,
                err: new Error('BluefinTecsMerchantServicesSDK: graphql: operation not allowed by' +
                    ' SDK option allow.op value: "' + options.allow.op + '"'),
            };
        }
        const res = await this._rawRequest({
            method: 'POST',
            headers: { 'content-type': 'application/json' },
            body: { query, variables: variables || {} },
            ctrl,
        });
        if (res instanceof Error) {
            return res;
        }
        // Errors are read BEFORE any status check: a GraphQL parse or validation
        // failure comes back as HTTP 400 carrying the standard { errors: [...] }
        // body, and the raw path represents a non-2xx as { ok: false } with no
        // err — so returning early on status would discard the server's own
        // diagnostics, which are the only useful part of that response.
        const errors = null == res.data ? undefined : res.data.errors;
        if (null != errors && Array.isArray(errors) && 0 < errors.length) {
            const first = errors[0] || {};
            const err = new Error('BluefinTecsMerchantServicesSDK: graphql: ' +
                (first.message || 'graphql error'));
            err.graphql = errors;
            return { ok: false, status: res.status, headers: res.headers, err, data: res.data };
        }
        return res;
    }
    // Entity access: `client.CancelTransaction().list()` / `client.CancelTransaction().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    CancelTransaction(entopts) {
        const self = this;
        return new CancelTransactionEntity_1.CancelTransactionEntity(self, entopts);
    }
    // Entity access: `client.CheckCardBlackListed().list()` / `client.CheckCardBlackListed().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    CheckCardBlackListed(entopts) {
        const self = this;
        return new CheckCardBlackListedEntity_1.CheckCardBlackListedEntity(self, entopts);
    }
    // Entity access: `client.CreateProduct().list()` / `client.CreateProduct().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    CreateProduct(entopts) {
        const self = this;
        return new CreateProductEntity_1.CreateProductEntity(self, entopts);
    }
    // Entity access: `client.DeactivateTerminal().list()` / `client.DeactivateTerminal().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    DeactivateTerminal(entopts) {
        const self = this;
        return new DeactivateTerminalEntity_1.DeactivateTerminalEntity(self, entopts);
    }
    // Entity access: `client.DigitalServicesApi().list()` / `client.DigitalServicesApi().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    DigitalServicesApi(entopts) {
        const self = this;
        return new DigitalServicesApiEntity_1.DigitalServicesApiEntity(self, entopts);
    }
    // Entity access: `client.EcDataEcom().list()` / `client.EcDataEcom().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    EcDataEcom(entopts) {
        const self = this;
        return new EcDataEcomEntity_1.EcDataEcomEntity(self, entopts);
    }
    // Entity access: `client.EcomParameter().list()` / `client.EcomParameter().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    EcomParameter(entopts) {
        const self = this;
        return new EcomParameterEntity_1.EcomParameterEntity(self, entopts);
    }
    // Entity access: `client.EcrData().list()` / `client.EcrData().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    EcrData(entopts) {
        const self = this;
        return new EcrDataEntity_1.EcrDataEntity(self, entopts);
    }
    // Entity access: `client.EmvData().list()` / `client.EmvData().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    EmvData(entopts) {
        const self = this;
        return new EmvDataEntity_1.EmvDataEntity(self, entopts);
    }
    // Entity access: `client.EnableAcquiring().list()` / `client.EnableAcquiring().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    EnableAcquiring(entopts) {
        const self = this;
        return new EnableAcquiringEntity_1.EnableAcquiringEntity(self, entopts);
    }
    // Entity access: `client.GetMerchantContractNumber().list()` / `client.GetMerchantContractNumber().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    GetMerchantContractNumber(entopts) {
        const self = this;
        return new GetMerchantContractNumberEntity_1.GetMerchantContractNumberEntity(self, entopts);
    }
    // Entity access: `client.GetTemplateXml().list()` / `client.GetTemplateXml().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    GetTemplateXml(entopts) {
        const self = this;
        return new GetTemplateXmlEntity_1.GetTemplateXmlEntity(self, entopts);
    }
    // Entity access: `client.IntroduceMandator().list()` / `client.IntroduceMandator().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    IntroduceMandator(entopts) {
        const self = this;
        return new IntroduceMandatorEntity_1.IntroduceMandatorEntity(self, entopts);
    }
    // Entity access: `client.IntroducePackage().list()` / `client.IntroducePackage().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    IntroducePackage(entopts) {
        const self = this;
        return new IntroducePackageEntity_1.IntroducePackageEntity(self, entopts);
    }
    // Entity access: `client.KeepAlive().list()` / `client.KeepAlive().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    KeepAlive(entopts) {
        const self = this;
        return new KeepAliveEntity_1.KeepAliveEntity(self, entopts);
    }
    // Entity access: `client.ListTerminal().list()` / `client.ListTerminal().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    ListTerminal(entopts) {
        const self = this;
        return new ListTerminalEntity_1.ListTerminalEntity(self, entopts);
    }
    // Entity access: `client.MandatorClearingExport().list()` / `client.MandatorClearingExport().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    MandatorClearingExport(entopts) {
        const self = this;
        return new MandatorClearingExportEntity_1.MandatorClearingExportEntity(self, entopts);
    }
    // Entity access: `client.MandatorClearingExportDownload().list()` / `client.MandatorClearingExportDownload().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    MandatorClearingExportDownload(entopts) {
        const self = this;
        return new MandatorClearingExportDownloadEntity_1.MandatorClearingExportDownloadEntity(self, entopts);
    }
    // Entity access: `client.MandatorClearingExportSummary().list()` / `client.MandatorClearingExportSummary().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    MandatorClearingExportSummary(entopts) {
        const self = this;
        return new MandatorClearingExportSummaryEntity_1.MandatorClearingExportSummaryEntity(self, entopts);
    }
    // Entity access: `client.MerchantPortalServicesApi().list()` / `client.MerchantPortalServicesApi().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    MerchantPortalServicesApi(entopts) {
        const self = this;
        return new MerchantPortalServicesApiEntity_1.MerchantPortalServicesApiEntity(self, entopts);
    }
    // Entity access: `client.MoveTid().list()` / `client.MoveTid().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    MoveTid(entopts) {
        const self = this;
        return new MoveTidEntity_1.MoveTidEntity(self, entopts);
    }
    // Entity access: `client.PaymentManual().list()` / `client.PaymentManual().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    PaymentManual(entopts) {
        const self = this;
        return new PaymentManualEntity_1.PaymentManualEntity(self, entopts);
    }
    // Entity access: `client.PaymentSred().list()` / `client.PaymentSred().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    PaymentSred(entopts) {
        const self = this;
        return new PaymentSredEntity_1.PaymentSredEntity(self, entopts);
    }
    // Entity access: `client.PreAuthTransactionCompletion().list()` / `client.PreAuthTransactionCompletion().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    PreAuthTransactionCompletion(entopts) {
        const self = this;
        return new PreAuthTransactionCompletionEntity_1.PreAuthTransactionCompletionEntity(self, entopts);
    }
    // Entity access: `client.ReactivateTerminal().list()` / `client.ReactivateTerminal().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    ReactivateTerminal(entopts) {
        const self = this;
        return new ReactivateTerminalEntity_1.ReactivateTerminalEntity(self, entopts);
    }
    // Entity access: `client.RefundTransaction().list()` / `client.RefundTransaction().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    RefundTransaction(entopts) {
        const self = this;
        return new RefundTransactionEntity_1.RefundTransactionEntity(self, entopts);
    }
    // Entity access: `client.RegisterTecsCompany().list()` / `client.RegisterTecsCompany().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    RegisterTecsCompany(entopts) {
        const self = this;
        return new RegisterTecsCompanyEntity_1.RegisterTecsCompanyEntity(self, entopts);
    }
    // Entity access: `client.RegisterTerminal().list()` / `client.RegisterTerminal().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    RegisterTerminal(entopts) {
        const self = this;
        return new RegisterTerminalEntity_1.RegisterTerminalEntity(self, entopts);
    }
    // Entity access: `client.ReportData().list()` / `client.ReportData().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    ReportData(entopts) {
        const self = this;
        return new ReportDataEntity_1.ReportDataEntity(self, entopts);
    }
    // Entity access: `client.StatusTransaction().list()` / `client.StatusTransaction().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    StatusTransaction(entopts) {
        const self = this;
        return new StatusTransactionEntity_1.StatusTransactionEntity(self, entopts);
    }
    // Entity access: `client.StoreTerminalParameter().list()` / `client.StoreTerminalParameter().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    StoreTerminalParameter(entopts) {
        const self = this;
        return new StoreTerminalParameterEntity_1.StoreTerminalParameterEntity(self, entopts);
    }
    // Entity access: `client.TerminalId().list()` / `client.TerminalId().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    TerminalId(entopts) {
        const self = this;
        return new TerminalIdEntity_1.TerminalIdEntity(self, entopts);
    }
    // Entity access: `client.TransactionHistory().list()` / `client.TransactionHistory().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    TransactionHistory(entopts) {
        const self = this;
        return new TransactionHistoryEntity_1.TransactionHistoryEntity(self, entopts);
    }
    // Entity access: `client.TransactionsCount().list()` / `client.TransactionsCount().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    TransactionsCount(entopts) {
        const self = this;
        return new TransactionsCountEntity_1.TransactionsCountEntity(self, entopts);
    }
    // Entity access: `client.TransactionsCountCardBrand().list()` / `client.TransactionsCountCardBrand().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    TransactionsCountCardBrand(entopts) {
        const self = this;
        return new TransactionsCountCardBrandEntity_1.TransactionsCountCardBrandEntity(self, entopts);
    }
    // Entity access: `client.TransactionsTurnover().list()` / `client.TransactionsTurnover().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    TransactionsTurnover(entopts) {
        const self = this;
        return new TransactionsTurnoverEntity_1.TransactionsTurnoverEntity(self, entopts);
    }
    // Entity access: `client.UpdateMerchant().list()` / `client.UpdateMerchant().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    UpdateMerchant(entopts) {
        const self = this;
        return new UpdateMerchantEntity_1.UpdateMerchantEntity(self, entopts);
    }
    // Entity access: `client.UpdateTemplateXml().list()` / `client.UpdateTemplateXml().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    UpdateTemplateXml(entopts) {
        const self = this;
        return new UpdateTemplateXmlEntity_1.UpdateTemplateXmlEntity(self, entopts);
    }
    // Entity access: `client.Version().list()` / `client.Version().load({ id })`.
    // The argument is the entity OPTIONS object (passed to the entity
    // constructor as entopts), not initial entity data.
    Version(entopts) {
        const self = this;
        return new VersionEntity_1.VersionEntity(self, entopts);
    }
    static test(testoptsarg, sdkoptsarg) {
        const struct = stdutil.struct;
        const setpath = struct.setpath;
        const getdef = struct.getdef;
        const clone = struct.clone;
        const setprop = struct.setprop;
        const sdkopts = getdef(clone(sdkoptsarg), {});
        const testopts = getdef(clone(testoptsarg), {});
        setprop(testopts, 'active', true);
        setpath(sdkopts, 'feature.test', testopts);
        const testsdk = new BluefinTecsMerchantServicesSDK(sdkopts);
        testsdk._mode = 'test';
        return testsdk;
    }
    tester(testopts, sdkopts) {
        return BluefinTecsMerchantServicesSDK.test(testopts, sdkopts);
    }
    toJSON() {
        return { name: 'BluefinTecsMerchantServices' };
    }
    toString() {
        return 'BluefinTecsMerchantServices ' + this._utility.struct.jsonify(this.toJSON());
    }
    [node_util_1.inspect.custom]() {
        return this.toString();
    }
}
exports.BluefinTecsMerchantServicesSDK = BluefinTecsMerchantServicesSDK;
const SDK = BluefinTecsMerchantServicesSDK;
exports.SDK = SDK;
//# sourceMappingURL=BluefinTecsMerchantServicesSDK.js.map