// BluefinTecsMerchantServices Js SDK

const { CancelTransactionEntity } = require('./entity/CancelTransactionEntity')
const { CheckCardBlackListedEntity } = require('./entity/CheckCardBlackListedEntity')
const { CreateProductEntity } = require('./entity/CreateProductEntity')
const { DeactivateTerminalEntity } = require('./entity/DeactivateTerminalEntity')
const { DigitalServicesApiEntity } = require('./entity/DigitalServicesApiEntity')
const { EcDataEcomEntity } = require('./entity/EcDataEcomEntity')
const { EcomParameterEntity } = require('./entity/EcomParameterEntity')
const { EcrDataEntity } = require('./entity/EcrDataEntity')
const { EmvDataEntity } = require('./entity/EmvDataEntity')
const { EnableAcquiringEntity } = require('./entity/EnableAcquiringEntity')
const { GetMerchantContractNumberEntity } = require('./entity/GetMerchantContractNumberEntity')
const { GetTemplateXmlEntity } = require('./entity/GetTemplateXmlEntity')
const { IntroduceMandatorEntity } = require('./entity/IntroduceMandatorEntity')
const { IntroducePackageEntity } = require('./entity/IntroducePackageEntity')
const { KeepAliveEntity } = require('./entity/KeepAliveEntity')
const { ListTerminalEntity } = require('./entity/ListTerminalEntity')
const { MandatorClearingExportEntity } = require('./entity/MandatorClearingExportEntity')
const { MandatorClearingExportDownloadEntity } = require('./entity/MandatorClearingExportDownloadEntity')
const { MandatorClearingExportSummaryEntity } = require('./entity/MandatorClearingExportSummaryEntity')
const { MerchantPortalServicesApiEntity } = require('./entity/MerchantPortalServicesApiEntity')
const { MoveTidEntity } = require('./entity/MoveTidEntity')
const { PaymentManualEntity } = require('./entity/PaymentManualEntity')
const { PaymentSredEntity } = require('./entity/PaymentSredEntity')
const { PreAuthTransactionCompletionEntity } = require('./entity/PreAuthTransactionCompletionEntity')
const { ReactivateTerminalEntity } = require('./entity/ReactivateTerminalEntity')
const { RefundTransactionEntity } = require('./entity/RefundTransactionEntity')
const { RegisterTecsCompanyEntity } = require('./entity/RegisterTecsCompanyEntity')
const { RegisterTerminalEntity } = require('./entity/RegisterTerminalEntity')
const { ReportDataEntity } = require('./entity/ReportDataEntity')
const { StatusTransactionEntity } = require('./entity/StatusTransactionEntity')
const { StoreTerminalParameterEntity } = require('./entity/StoreTerminalParameterEntity')
const { TerminalIdEntity } = require('./entity/TerminalIdEntity')
const { TransactionHistoryEntity } = require('./entity/TransactionHistoryEntity')
const { TransactionsCountEntity } = require('./entity/TransactionsCountEntity')
const { TransactionsCountCardBrandEntity } = require('./entity/TransactionsCountCardBrandEntity')
const { TransactionsTurnoverEntity } = require('./entity/TransactionsTurnoverEntity')
const { UpdateMerchantEntity } = require('./entity/UpdateMerchantEntity')
const { UpdateTemplateXmlEntity } = require('./entity/UpdateTemplateXmlEntity')
const { VersionEntity } = require('./entity/VersionEntity')


const { inspect } = require('node:util')

const { config } = require('./Config')
const { Utility } = require('./utility/Utility')
const { BluefinTecsMerchantServicesEntityBase } = require('./BluefinTecsMerchantServicesEntityBase')


const { BaseFeature } = require('./feature/base/BaseFeature')


const stdutil = new Utility()


class BluefinTecsMerchantServicesSDK {
  _mode = 'live'
  _options
  _utility = new Utility()
  _features
  _rootctx

  constructor(options) {

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
    const featureorder = getpath(this._options, '__derived__.featureorder') || []
    for (const fname of featureorder) {
      const fopts = this._options.feature[fname] || {}
      if (fopts.active) {
        featureAdd(this._rootctx, this._rootctx.config.makeFeature(fname))
      }
    }

    if (null != this._options.extend) {
      for (let f of this._options.extend) {
        featureAdd(this._rootctx, f)
      }
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


  async prepare(fetchargs) {
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

    let ctx = makeContext({
      opname: 'prepare',
      ctrl: fetchargs.ctrl || {},
    }, this._rootctx)

    const options = this._options

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


  async direct(fetchargs) {
    const utility = this._utility
    const fetcher = utility.fetcher
    const makeContext = utility.makeContext

    const fetchdef = await this.prepare(fetchargs)
    if (fetchdef instanceof Error) {
      return fetchdef
    }

    let ctx = makeContext({
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
      const json = 'function' === typeof fetched.json ? await fetched.json() : fetched.json

      return {
        ok: status >= 200 && status < 300,
        status,
        headers: fetched.headers,
        data: json,
      }
    }
    catch (err) {
      return { ok: false, err }
    }
  }



  // Entity access: `client.CancelTransaction().list()` / `client.CancelTransaction().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  CancelTransaction(entopts) {
    const self = this
    return new CancelTransactionEntity(self, entopts)
  }


  // Entity access: `client.CheckCardBlackListed().list()` / `client.CheckCardBlackListed().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  CheckCardBlackListed(entopts) {
    const self = this
    return new CheckCardBlackListedEntity(self, entopts)
  }


  // Entity access: `client.CreateProduct().list()` / `client.CreateProduct().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  CreateProduct(entopts) {
    const self = this
    return new CreateProductEntity(self, entopts)
  }


  // Entity access: `client.DeactivateTerminal().list()` / `client.DeactivateTerminal().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  DeactivateTerminal(entopts) {
    const self = this
    return new DeactivateTerminalEntity(self, entopts)
  }


  // Entity access: `client.DigitalServicesApi().list()` / `client.DigitalServicesApi().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  DigitalServicesApi(entopts) {
    const self = this
    return new DigitalServicesApiEntity(self, entopts)
  }


  // Entity access: `client.EcDataEcom().list()` / `client.EcDataEcom().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  EcDataEcom(entopts) {
    const self = this
    return new EcDataEcomEntity(self, entopts)
  }


  // Entity access: `client.EcomParameter().list()` / `client.EcomParameter().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  EcomParameter(entopts) {
    const self = this
    return new EcomParameterEntity(self, entopts)
  }


  // Entity access: `client.EcrData().list()` / `client.EcrData().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  EcrData(entopts) {
    const self = this
    return new EcrDataEntity(self, entopts)
  }


  // Entity access: `client.EmvData().list()` / `client.EmvData().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  EmvData(entopts) {
    const self = this
    return new EmvDataEntity(self, entopts)
  }


  // Entity access: `client.EnableAcquiring().list()` / `client.EnableAcquiring().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  EnableAcquiring(entopts) {
    const self = this
    return new EnableAcquiringEntity(self, entopts)
  }


  // Entity access: `client.GetMerchantContractNumber().list()` / `client.GetMerchantContractNumber().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  GetMerchantContractNumber(entopts) {
    const self = this
    return new GetMerchantContractNumberEntity(self, entopts)
  }


  // Entity access: `client.GetTemplateXml().list()` / `client.GetTemplateXml().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  GetTemplateXml(entopts) {
    const self = this
    return new GetTemplateXmlEntity(self, entopts)
  }


  // Entity access: `client.IntroduceMandator().list()` / `client.IntroduceMandator().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  IntroduceMandator(entopts) {
    const self = this
    return new IntroduceMandatorEntity(self, entopts)
  }


  // Entity access: `client.IntroducePackage().list()` / `client.IntroducePackage().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  IntroducePackage(entopts) {
    const self = this
    return new IntroducePackageEntity(self, entopts)
  }


  // Entity access: `client.KeepAlive().list()` / `client.KeepAlive().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  KeepAlive(entopts) {
    const self = this
    return new KeepAliveEntity(self, entopts)
  }


  // Entity access: `client.ListTerminal().list()` / `client.ListTerminal().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  ListTerminal(entopts) {
    const self = this
    return new ListTerminalEntity(self, entopts)
  }


  // Entity access: `client.MandatorClearingExport().list()` / `client.MandatorClearingExport().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  MandatorClearingExport(entopts) {
    const self = this
    return new MandatorClearingExportEntity(self, entopts)
  }


  // Entity access: `client.MandatorClearingExportDownload().list()` / `client.MandatorClearingExportDownload().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  MandatorClearingExportDownload(entopts) {
    const self = this
    return new MandatorClearingExportDownloadEntity(self, entopts)
  }


  // Entity access: `client.MandatorClearingExportSummary().list()` / `client.MandatorClearingExportSummary().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  MandatorClearingExportSummary(entopts) {
    const self = this
    return new MandatorClearingExportSummaryEntity(self, entopts)
  }


  // Entity access: `client.MerchantPortalServicesApi().list()` / `client.MerchantPortalServicesApi().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  MerchantPortalServicesApi(entopts) {
    const self = this
    return new MerchantPortalServicesApiEntity(self, entopts)
  }


  // Entity access: `client.MoveTid().list()` / `client.MoveTid().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  MoveTid(entopts) {
    const self = this
    return new MoveTidEntity(self, entopts)
  }


  // Entity access: `client.PaymentManual().list()` / `client.PaymentManual().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  PaymentManual(entopts) {
    const self = this
    return new PaymentManualEntity(self, entopts)
  }


  // Entity access: `client.PaymentSred().list()` / `client.PaymentSred().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  PaymentSred(entopts) {
    const self = this
    return new PaymentSredEntity(self, entopts)
  }


  // Entity access: `client.PreAuthTransactionCompletion().list()` / `client.PreAuthTransactionCompletion().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  PreAuthTransactionCompletion(entopts) {
    const self = this
    return new PreAuthTransactionCompletionEntity(self, entopts)
  }


  // Entity access: `client.ReactivateTerminal().list()` / `client.ReactivateTerminal().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  ReactivateTerminal(entopts) {
    const self = this
    return new ReactivateTerminalEntity(self, entopts)
  }


  // Entity access: `client.RefundTransaction().list()` / `client.RefundTransaction().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  RefundTransaction(entopts) {
    const self = this
    return new RefundTransactionEntity(self, entopts)
  }


  // Entity access: `client.RegisterTecsCompany().list()` / `client.RegisterTecsCompany().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  RegisterTecsCompany(entopts) {
    const self = this
    return new RegisterTecsCompanyEntity(self, entopts)
  }


  // Entity access: `client.RegisterTerminal().list()` / `client.RegisterTerminal().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  RegisterTerminal(entopts) {
    const self = this
    return new RegisterTerminalEntity(self, entopts)
  }


  // Entity access: `client.ReportData().list()` / `client.ReportData().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  ReportData(entopts) {
    const self = this
    return new ReportDataEntity(self, entopts)
  }


  // Entity access: `client.StatusTransaction().list()` / `client.StatusTransaction().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  StatusTransaction(entopts) {
    const self = this
    return new StatusTransactionEntity(self, entopts)
  }


  // Entity access: `client.StoreTerminalParameter().list()` / `client.StoreTerminalParameter().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  StoreTerminalParameter(entopts) {
    const self = this
    return new StoreTerminalParameterEntity(self, entopts)
  }


  // Entity access: `client.TerminalId().list()` / `client.TerminalId().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  TerminalId(entopts) {
    const self = this
    return new TerminalIdEntity(self, entopts)
  }


  // Entity access: `client.TransactionHistory().list()` / `client.TransactionHistory().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  TransactionHistory(entopts) {
    const self = this
    return new TransactionHistoryEntity(self, entopts)
  }


  // Entity access: `client.TransactionsCount().list()` / `client.TransactionsCount().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  TransactionsCount(entopts) {
    const self = this
    return new TransactionsCountEntity(self, entopts)
  }


  // Entity access: `client.TransactionsCountCardBrand().list()` / `client.TransactionsCountCardBrand().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  TransactionsCountCardBrand(entopts) {
    const self = this
    return new TransactionsCountCardBrandEntity(self, entopts)
  }


  // Entity access: `client.TransactionsTurnover().list()` / `client.TransactionsTurnover().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  TransactionsTurnover(entopts) {
    const self = this
    return new TransactionsTurnoverEntity(self, entopts)
  }


  // Entity access: `client.UpdateMerchant().list()` / `client.UpdateMerchant().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  UpdateMerchant(entopts) {
    const self = this
    return new UpdateMerchantEntity(self, entopts)
  }


  // Entity access: `client.UpdateTemplateXml().list()` / `client.UpdateTemplateXml().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  UpdateTemplateXml(entopts) {
    const self = this
    return new UpdateTemplateXmlEntity(self, entopts)
  }


  // Entity access: `client.Version().list()` / `client.Version().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  Version(entopts) {
    const self = this
    return new VersionEntity(self, entopts)
  }




  static test(testoptsarg, sdkoptsarg) {
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


  tester(testopts, sdkopts) {
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


module.exports = {
  stdutil,
  config,

  BaseFeature,
  BluefinTecsMerchantServicesEntityBase,

  BluefinTecsMerchantServicesSDK,
  SDK,
}

