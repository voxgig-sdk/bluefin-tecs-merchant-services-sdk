// BluefinTecsMerchantServices Ts SDK

import { CancelTransactionEntity } from './entity/CancelTransactionEntity'
import { CheckCardBlackListedEntity } from './entity/CheckCardBlackListedEntity'
import { CreateProductEntity } from './entity/CreateProductEntity'
import { DeactivateTerminalEntity } from './entity/DeactivateTerminalEntity'
import { DigitalServicesApiEntity } from './entity/DigitalServicesApiEntity'
import { EcDataEcomEntity } from './entity/EcDataEcomEntity'
import { EcomParameterEntity } from './entity/EcomParameterEntity'
import { EcrDataEntity } from './entity/EcrDataEntity'
import { EmvDataEntity } from './entity/EmvDataEntity'
import { EnableAcquiringEntity } from './entity/EnableAcquiringEntity'
import { GetMerchantContractNumberEntity } from './entity/GetMerchantContractNumberEntity'
import { GetTemplateXmlEntity } from './entity/GetTemplateXmlEntity'
import { IntroduceMandatorEntity } from './entity/IntroduceMandatorEntity'
import { IntroducePackageEntity } from './entity/IntroducePackageEntity'
import { KeepAliveEntity } from './entity/KeepAliveEntity'
import { ListTerminalEntity } from './entity/ListTerminalEntity'
import { MandatorClearingExportEntity } from './entity/MandatorClearingExportEntity'
import { MandatorClearingExportDownloadEntity } from './entity/MandatorClearingExportDownloadEntity'
import { MandatorClearingExportSummaryEntity } from './entity/MandatorClearingExportSummaryEntity'
import { MerchantPortalServicesApiEntity } from './entity/MerchantPortalServicesApiEntity'
import { MoveTidEntity } from './entity/MoveTidEntity'
import { PaymentManualEntity } from './entity/PaymentManualEntity'
import { PaymentSredEntity } from './entity/PaymentSredEntity'
import { PreAuthTransactionCompletionEntity } from './entity/PreAuthTransactionCompletionEntity'
import { ReactivateTerminalEntity } from './entity/ReactivateTerminalEntity'
import { RefundTransactionEntity } from './entity/RefundTransactionEntity'
import { RegisterTecsCompanyEntity } from './entity/RegisterTecsCompanyEntity'
import { RegisterTerminalEntity } from './entity/RegisterTerminalEntity'
import { ReportDataEntity } from './entity/ReportDataEntity'
import { StatusTransactionEntity } from './entity/StatusTransactionEntity'
import { StoreTerminalParameterEntity } from './entity/StoreTerminalParameterEntity'
import { TerminalIdEntity } from './entity/TerminalIdEntity'
import { TransactionHistoryEntity } from './entity/TransactionHistoryEntity'
import { TransactionsCountEntity } from './entity/TransactionsCountEntity'
import { TransactionsCountCardBrandEntity } from './entity/TransactionsCountCardBrandEntity'
import { TransactionsTurnoverEntity } from './entity/TransactionsTurnoverEntity'
import { UpdateMerchantEntity } from './entity/UpdateMerchantEntity'
import { UpdateTemplateXmlEntity } from './entity/UpdateTemplateXmlEntity'
import { VersionEntity } from './entity/VersionEntity'

export type * from './BluefinTecsMerchantServicesTypes'


import { inspect } from 'node:util'

import type { Context, Feature } from './types'

import { config } from './Config'
import { BluefinTecsMerchantServicesEntityBase } from './BluefinTecsMerchantServicesEntityBase'
import { Utility } from './utility/Utility'


import { BaseFeature } from './feature/base/BaseFeature'


const stdutil = new Utility()


class BluefinTecsMerchantServicesSDK {
  _mode: string = 'live'
  _options: any
  _utility = new Utility()
  _features: Feature[]
  _rootctx: Context

  constructor(options?: any) {

    this._rootctx = this._utility.makeContext({
      client: this,
      utility: this._utility,
      config,
      options,
      shared: new WeakMap()
    })

    this._options = this._utility.makeOptions(this._rootctx)

    const struct = this._utility.struct
    const getpath = struct.getpath

    if (true === getpath(this._options.feature, 'test.active')) {
      this._mode = 'test'
    }

    this._rootctx.options = this._options

    this._features = []

    const featureAdd = this._utility.featureAdd
    const featureInit = this._utility.featureInit

    // Add features in the resolved order (makeOptions puts an explicit
    // array order first, else defaults to test-first). Ordering matters:
    // the `test` feature installs the base mock transport and the transport
    // features (retry/cache/netsim/proxy/ratelimit) wrap whatever is current,
    // so `test` must be added before them to sit at the base of the chain.
    const extend = this._options.extend || []

    const featureorder = getpath(this._options, '__derived__.featureorder') || []
    for (const fname of featureorder) {
      const fopts = this._options.feature[fname] || {}
      if (fopts.active) {
        // An active name with no generated class is legal when an
        // extend-supplied instance carries that name (station's adopt
        // path): the instance is added below, positioned by its own
        // __after__ entry, so skip it here rather than fail construction.
        if (!this._rootctx.config.hasFeature(fname) &&
          extend.some((f: any) => fname === f.name)) {
          continue
        }
        featureAdd(this._rootctx, this._rootctx.config.makeFeature(fname))
      }
    }

    for (let f of extend) {
      featureAdd(this._rootctx, f)
    }

    for (let f of this._features) {
      featureInit(this._rootctx, f)
    }

    const featureHook = this._utility.featureHook
    featureHook(this._rootctx, 'PostConstruct')
  }


  options() {
    return this._utility.struct.clone(this._options)
  }


  utility() {
    return this._utility.struct.clone(this._utility)
  }


  async prepare(fetchargs?: any) {
    const utility = this._utility
    const struct = utility.struct
    const clone = struct.clone

    const {
      makeContext,
      makeFetchDef,
      prepareHeaders,
      prepareAuth,
    } = utility

    fetchargs = fetchargs || {}

    let ctx: Context = makeContext({
      opname: 'prepare',
      ctrl: fetchargs.ctrl || {},
    }, this._rootctx)

    const options = this._options

    // Build spec directly from SDK options + user-provided fetch args.
    const spec: any = {
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
    }

    ctx.spec = spec

    // Merge user-provided headers over SDK defaults.
    if (fetchargs.headers) {
      const uheaders = fetchargs.headers
      for (let key in uheaders) {
        spec.headers[key] = uheaders[key]
      }
    }

    // Apply SDK auth (apikey, auth prefix, etc.)
    const authResult = prepareAuth(ctx)
    if (authResult instanceof Error) {
      return authResult
    }

    return makeFetchDef(ctx)
  }


  // Raw endpoint access is operator-controllable, like every entity op.
  // Blocking it means denying BOTH the 'direct' and 'graphql' tokens, since
  // either one reaches the same endpoint.
  async direct(fetchargs?: any) {
    if (!this._options.allow.op.includes('direct')) {
      return {
        ok: false,
        err: new Error('BluefinTecsMerchantServicesSDK: direct: operation not allowed by' +
          ' SDK option allow.op value: "' + this._options.allow.op + '"'),
      }
    }

    return this._rawRequest(fetchargs)
  }


  // Ungated request path shared by direct() and graphql(), each of which
  // checks its own allow.op token first. Private, rather than a flag on
  // fetchargs: a caller-supplied marker would let anyone opt straight back
  // out of the gate by passing it.
  async _rawRequest(fetchargs?: any) {
    const utility = this._utility

    const fetcher = utility.fetcher
    const makeContext = utility.makeContext

    const fetchdef = await this.prepare(fetchargs)
    if (fetchdef instanceof Error) {
      return fetchdef
    }

    let ctx: Context = makeContext({
      opname: 'direct',
      ctrl: (fetchargs || {}).ctrl || {},
    }, this._rootctx)

    try {
      const fetched = await fetcher(ctx, fetchdef.url, fetchdef)

      if (null == fetched) {
        return { ok: false, err: ctx.error('direct_no_response', 'response: undefined') }
      }
      else if (fetched instanceof Error) {
        return { ok: false, err: fetched }
      }

      const status = fetched.status

      // No body responses (204 No Content, 304 Not Modified) and explicit
      // zero content-length must skip JSON parsing — fetched.json() would
      // throw `Unexpected end of JSON input` on an empty body.
      const headers = fetched.headers
      const contentLength = headers && 'function' === typeof headers.get
        ? headers.get('content-length')
        : (headers || {})['content-length']
      const noBody = 204 === status || 304 === status || '0' === String(contentLength)

      let json: any = undefined
      if (!noBody) {
        try {
          json = 'function' === typeof fetched.json ? await fetched.json() : fetched.json
        }
        catch (parseErr) {
          // Body wasn't valid JSON — surface the raw response rather than
          // throwing. data stays undefined; callers can inspect status/headers.
          json = undefined
        }
      }

      return {
        ok: status >= 200 && status < 300,
        status,
        headers: fetched.headers,
        data: json,
      }
    }
    catch (err: any) {
      return { ok: false, err }
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
  async graphql(query: string, variables?: any, ctrl?: any) {
    const options = this._options

    if (!options.allow.op.includes('graphql')) {
      return {
        ok: false,
        err: new Error('BluefinTecsMerchantServicesSDK: graphql: operation not allowed by' +
          ' SDK option allow.op value: "' + options.allow.op + '"'),
      }
    }

    const res: any = await this._rawRequest({
      method: 'POST',
      headers: { 'content-type': 'application/json' },
      body: { query, variables: variables || {} },
      ctrl,
    })

    if (res instanceof Error) {
      return res
    }

    // Errors are read BEFORE any status check: a GraphQL parse or validation
    // failure comes back as HTTP 400 carrying the standard { errors: [...] }
    // body, and the raw path represents a non-2xx as { ok: false } with no
    // err — so returning early on status would discard the server's own
    // diagnostics, which are the only useful part of that response.
    const errors = null == res.data ? undefined : res.data.errors

    if (null != errors && Array.isArray(errors) && 0 < errors.length) {
      const first = errors[0] || {}
      const err: any = new Error('BluefinTecsMerchantServicesSDK: graphql: ' +
        (first.message || 'graphql error'))
      err.graphql = errors
      return { ok: false, status: res.status, headers: res.headers, err, data: res.data }
    }

    return res
  }



  // Entity access: `client.CancelTransaction().list()` / `client.CancelTransaction().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  CancelTransaction(entopts?: Record<string, any>) {
    const self = this
    return new CancelTransactionEntity(self, entopts)
  }


  // Entity access: `client.CheckCardBlackListed().list()` / `client.CheckCardBlackListed().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  CheckCardBlackListed(entopts?: Record<string, any>) {
    const self = this
    return new CheckCardBlackListedEntity(self, entopts)
  }


  // Entity access: `client.CreateProduct().list()` / `client.CreateProduct().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  CreateProduct(entopts?: Record<string, any>) {
    const self = this
    return new CreateProductEntity(self, entopts)
  }


  // Entity access: `client.DeactivateTerminal().list()` / `client.DeactivateTerminal().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  DeactivateTerminal(entopts?: Record<string, any>) {
    const self = this
    return new DeactivateTerminalEntity(self, entopts)
  }


  // Entity access: `client.DigitalServicesApi().list()` / `client.DigitalServicesApi().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  DigitalServicesApi(entopts?: Record<string, any>) {
    const self = this
    return new DigitalServicesApiEntity(self, entopts)
  }


  // Entity access: `client.EcDataEcom().list()` / `client.EcDataEcom().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  EcDataEcom(entopts?: Record<string, any>) {
    const self = this
    return new EcDataEcomEntity(self, entopts)
  }


  // Entity access: `client.EcomParameter().list()` / `client.EcomParameter().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  EcomParameter(entopts?: Record<string, any>) {
    const self = this
    return new EcomParameterEntity(self, entopts)
  }


  // Entity access: `client.EcrData().list()` / `client.EcrData().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  EcrData(entopts?: Record<string, any>) {
    const self = this
    return new EcrDataEntity(self, entopts)
  }


  // Entity access: `client.EmvData().list()` / `client.EmvData().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  EmvData(entopts?: Record<string, any>) {
    const self = this
    return new EmvDataEntity(self, entopts)
  }


  // Entity access: `client.EnableAcquiring().list()` / `client.EnableAcquiring().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  EnableAcquiring(entopts?: Record<string, any>) {
    const self = this
    return new EnableAcquiringEntity(self, entopts)
  }


  // Entity access: `client.GetMerchantContractNumber().list()` / `client.GetMerchantContractNumber().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  GetMerchantContractNumber(entopts?: Record<string, any>) {
    const self = this
    return new GetMerchantContractNumberEntity(self, entopts)
  }


  // Entity access: `client.GetTemplateXml().list()` / `client.GetTemplateXml().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  GetTemplateXml(entopts?: Record<string, any>) {
    const self = this
    return new GetTemplateXmlEntity(self, entopts)
  }


  // Entity access: `client.IntroduceMandator().list()` / `client.IntroduceMandator().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  IntroduceMandator(entopts?: Record<string, any>) {
    const self = this
    return new IntroduceMandatorEntity(self, entopts)
  }


  // Entity access: `client.IntroducePackage().list()` / `client.IntroducePackage().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  IntroducePackage(entopts?: Record<string, any>) {
    const self = this
    return new IntroducePackageEntity(self, entopts)
  }


  // Entity access: `client.KeepAlive().list()` / `client.KeepAlive().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  KeepAlive(entopts?: Record<string, any>) {
    const self = this
    return new KeepAliveEntity(self, entopts)
  }


  // Entity access: `client.ListTerminal().list()` / `client.ListTerminal().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  ListTerminal(entopts?: Record<string, any>) {
    const self = this
    return new ListTerminalEntity(self, entopts)
  }


  // Entity access: `client.MandatorClearingExport().list()` / `client.MandatorClearingExport().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  MandatorClearingExport(entopts?: Record<string, any>) {
    const self = this
    return new MandatorClearingExportEntity(self, entopts)
  }


  // Entity access: `client.MandatorClearingExportDownload().list()` / `client.MandatorClearingExportDownload().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  MandatorClearingExportDownload(entopts?: Record<string, any>) {
    const self = this
    return new MandatorClearingExportDownloadEntity(self, entopts)
  }


  // Entity access: `client.MandatorClearingExportSummary().list()` / `client.MandatorClearingExportSummary().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  MandatorClearingExportSummary(entopts?: Record<string, any>) {
    const self = this
    return new MandatorClearingExportSummaryEntity(self, entopts)
  }


  // Entity access: `client.MerchantPortalServicesApi().list()` / `client.MerchantPortalServicesApi().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  MerchantPortalServicesApi(entopts?: Record<string, any>) {
    const self = this
    return new MerchantPortalServicesApiEntity(self, entopts)
  }


  // Entity access: `client.MoveTid().list()` / `client.MoveTid().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  MoveTid(entopts?: Record<string, any>) {
    const self = this
    return new MoveTidEntity(self, entopts)
  }


  // Entity access: `client.PaymentManual().list()` / `client.PaymentManual().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  PaymentManual(entopts?: Record<string, any>) {
    const self = this
    return new PaymentManualEntity(self, entopts)
  }


  // Entity access: `client.PaymentSred().list()` / `client.PaymentSred().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  PaymentSred(entopts?: Record<string, any>) {
    const self = this
    return new PaymentSredEntity(self, entopts)
  }


  // Entity access: `client.PreAuthTransactionCompletion().list()` / `client.PreAuthTransactionCompletion().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  PreAuthTransactionCompletion(entopts?: Record<string, any>) {
    const self = this
    return new PreAuthTransactionCompletionEntity(self, entopts)
  }


  // Entity access: `client.ReactivateTerminal().list()` / `client.ReactivateTerminal().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  ReactivateTerminal(entopts?: Record<string, any>) {
    const self = this
    return new ReactivateTerminalEntity(self, entopts)
  }


  // Entity access: `client.RefundTransaction().list()` / `client.RefundTransaction().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  RefundTransaction(entopts?: Record<string, any>) {
    const self = this
    return new RefundTransactionEntity(self, entopts)
  }


  // Entity access: `client.RegisterTecsCompany().list()` / `client.RegisterTecsCompany().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  RegisterTecsCompany(entopts?: Record<string, any>) {
    const self = this
    return new RegisterTecsCompanyEntity(self, entopts)
  }


  // Entity access: `client.RegisterTerminal().list()` / `client.RegisterTerminal().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  RegisterTerminal(entopts?: Record<string, any>) {
    const self = this
    return new RegisterTerminalEntity(self, entopts)
  }


  // Entity access: `client.ReportData().list()` / `client.ReportData().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  ReportData(entopts?: Record<string, any>) {
    const self = this
    return new ReportDataEntity(self, entopts)
  }


  // Entity access: `client.StatusTransaction().list()` / `client.StatusTransaction().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  StatusTransaction(entopts?: Record<string, any>) {
    const self = this
    return new StatusTransactionEntity(self, entopts)
  }


  // Entity access: `client.StoreTerminalParameter().list()` / `client.StoreTerminalParameter().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  StoreTerminalParameter(entopts?: Record<string, any>) {
    const self = this
    return new StoreTerminalParameterEntity(self, entopts)
  }


  // Entity access: `client.TerminalId().list()` / `client.TerminalId().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  TerminalId(entopts?: Record<string, any>) {
    const self = this
    return new TerminalIdEntity(self, entopts)
  }


  // Entity access: `client.TransactionHistory().list()` / `client.TransactionHistory().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  TransactionHistory(entopts?: Record<string, any>) {
    const self = this
    return new TransactionHistoryEntity(self, entopts)
  }


  // Entity access: `client.TransactionsCount().list()` / `client.TransactionsCount().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  TransactionsCount(entopts?: Record<string, any>) {
    const self = this
    return new TransactionsCountEntity(self, entopts)
  }


  // Entity access: `client.TransactionsCountCardBrand().list()` / `client.TransactionsCountCardBrand().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  TransactionsCountCardBrand(entopts?: Record<string, any>) {
    const self = this
    return new TransactionsCountCardBrandEntity(self, entopts)
  }


  // Entity access: `client.TransactionsTurnover().list()` / `client.TransactionsTurnover().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  TransactionsTurnover(entopts?: Record<string, any>) {
    const self = this
    return new TransactionsTurnoverEntity(self, entopts)
  }


  // Entity access: `client.UpdateMerchant().list()` / `client.UpdateMerchant().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  UpdateMerchant(entopts?: Record<string, any>) {
    const self = this
    return new UpdateMerchantEntity(self, entopts)
  }


  // Entity access: `client.UpdateTemplateXml().list()` / `client.UpdateTemplateXml().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  UpdateTemplateXml(entopts?: Record<string, any>) {
    const self = this
    return new UpdateTemplateXmlEntity(self, entopts)
  }


  // Entity access: `client.Version().list()` / `client.Version().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  Version(entopts?: Record<string, any>) {
    const self = this
    return new VersionEntity(self, entopts)
  }




  static test(testoptsarg?: any, sdkoptsarg?: any) {
    const struct = stdutil.struct
    const setpath = struct.setpath
    const getdef = struct.getdef
    const clone = struct.clone
    const setprop = struct.setprop

    const sdkopts = getdef(clone(sdkoptsarg), {})
    const testopts = getdef(clone(testoptsarg), {})
    setprop(testopts, 'active', true)
    setpath(sdkopts, 'feature.test', testopts)

    const testsdk = new BluefinTecsMerchantServicesSDK(sdkopts)
    testsdk._mode = 'test'

    return testsdk
  }


  tester(testopts?: any, sdkopts?: any) {
    return BluefinTecsMerchantServicesSDK.test(testopts, sdkopts)
  }


  toJSON() {
    return { name: 'BluefinTecsMerchantServices' }
  }

  toString() {
    return 'BluefinTecsMerchantServices ' + this._utility.struct.jsonify(this.toJSON())
  }

  [inspect.custom]() {
    return this.toString()
  }

}




const SDK = BluefinTecsMerchantServicesSDK


export {
  stdutil,
  config,

  BaseFeature,
  BluefinTecsMerchantServicesEntityBase,

  BluefinTecsMerchantServicesSDK,
  SDK,
}


