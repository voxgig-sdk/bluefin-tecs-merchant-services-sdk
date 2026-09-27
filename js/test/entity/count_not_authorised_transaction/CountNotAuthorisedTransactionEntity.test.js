
const envlocal = __dirname + '/../../../.env.local'
require('../../utility').loadEnvLocal(envlocal)

const Path = require('node:path')
const Fs = require('node:fs')

const { test, describe, afterEach } = require('node:test')
const assert = require('node:assert')
const { createLiveTransport } = require('../../live-runner')
const { runLiveEntity } = require('../../live-entity')


const { BluefinTecsMerchantServicesSDK, BaseFeature, stdutil, config } = require('../../..')

const {
  envOverride,
  liveClientOptions,
  liveDelay,
  makeCtrl,
  makeMatch,
  makeReqdata,
  makeStepData,
  makeValid,
} = require('../../utility')


describe('CountNotAuthorisedTransactionEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.CountNotAuthorisedTransaction()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"period":{"a":true,"h":"Period","n":"period","r":false,"t":"`$STRING`","key$":"period","index$":0},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":1},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":2},"transactionDateFrom":{"a":true,"fo":"date-time","h":"Transaction Date From","n":"transactionDateFrom","op":{"create":{"req":true,"type":"`$STRING`"}},"r":false,"t":"`$STRING`","key$":"transactionDateFrom","index$":3},"transactionDateTo":{"a":true,"fo":"date-time","h":"Transaction Date To","n":"transactionDateTo","op":{"create":{"req":true,"type":"`$STRING`"}},"r":false,"t":"`$STRING`","key$":"transactionDateTo","index$":4},"transactionsCount":{"a":true,"h":"Transactions Count","n":"transactionsCount","r":false,"t":"`$ARRAY`","key$":"transactionsCount","index$":5}},"name":"count_not_authorised_transaction","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/countNotAuthorisedTransactions","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/countNotAuthorisedTransactions","q":{},"r":{},"s":[{"lit":"public"},{"lit":"countNotAuthorisedTransactions"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"count_not_authorised_transaction","name__orig":"count_not_authorised_transaction","Name":"CountNotAuthorisedTransaction","name_":"count_not_authorised_transaction","name-":"count-not-authorised-transaction","NAME":"COUNT_NOT_AUTHORISED_TRANSACTION","index$":3}, {"active":true,"entity":"count_not_authorised_transaction","key$":"BasicCountNotAuthorisedTransactionFlow","kind":"basic","name":"BasicCountNotAuthorisedTransactionFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"count_not_authorised_transaction_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'CountNotAuthorisedTransaction', {"POST /public/countNotAuthorisedTransactions":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"transactionDateFrom":{"type":"string","format":"date-time","key$":"transactionDateFrom"},"transactionDateTo":{"type":"string","format":"date-time","key$":"transactionDateTo"},"period":{"type":"string","pattern":"HOUR|DAY|MONTH|YEAR","key$":"period"}},"required":["transactionDateFrom","transactionDateTo"],"x-ref":"#/components/schemas/TransactionsCountRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const count_not_authorised_transaction_ref01_ent = client.CountNotAuthorisedTransaction()
    let count_not_authorised_transaction_ref01_data = setup.data.new.count_not_authorised_transaction['count_not_authorised_transaction_ref01']

    count_not_authorised_transaction_ref01_data = (await count_not_authorised_transaction_ref01_ent.create(count_not_authorised_transaction_ref01_data)).data()
    assert(null != count_not_authorised_transaction_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/count_not_authorised_transaction/CountNotAuthorisedTransactionTestData.json')

  // TODO: file ready util needed?
  const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8')

  // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
  const entityData = JSON.parse(entityDataSource)

  options.entity = entityData.existing

  let client = BluefinTecsMerchantServicesSDK.test(options, extra)
  const struct = client.utility().struct
  const merge = struct.merge
  const transform = struct.transform

  let idmap = transform(
    ['count_not_authorised_transaction01','count_not_authorised_transaction02','count_not_authorised_transaction03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_COUNT_NOT_AUTHORISED_TRANSACTION_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_COUNT_NOT_AUTHORISED_TRANSACTION_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_COUNT_NOT_AUTHORISED_TRANSACTION_ENTID']
    idmap = rawIds && rawIds.trim() ? JSON.parse(rawIds) : {}
    if (!idmap || Array.isArray(idmap) || typeof idmap !== 'object') {
      throw new Error('Live ENTID must be a JSON object')
    }
    client = new BluefinTecsMerchantServicesSDK(merge([
      // FIRST, so the generated fields below win: sdk-test-control.json's
      // test.client.options adds to the live client, it does not redirect it.
      liveClientOptions(),
      {
        apikey: env.BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY,
      },
      // 'extra || {}', not a bare 'extra': struct.merge returns UNDEFINED when
      // the last entry is undefined, and basicSetup is normally called with no
      // argument at all - so a bare 'extra' silently discarded the apikey and
      // server values above and handed the SDK undefined.
      extra || {},
      { system: { fetch: transport.fetch } }
    ]))
  }

  const setup = {
    idmap,
    env,
    options,
    client,
    struct,
    data: entityData,
    explain: 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN,
    live,
    transport,
    now: Date.now(),
  }

  return setup
}
  
