
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


describe('TransactionsCountCardBrandEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.TransactionsCountCardBrand()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"period":{"a":true,"h":"Period","n":"period","r":false,"t":"`$STRING`","key$":"period","index$":0},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":1},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":2},"transactionDateFrom":{"a":true,"fo":"date-time","h":"Transaction Date From","n":"transactionDateFrom","op":{"create":{"req":true,"type":"`$STRING`"}},"r":false,"t":"`$STRING`","key$":"transactionDateFrom","index$":3},"transactionDateTo":{"a":true,"fo":"date-time","h":"Transaction Date To","n":"transactionDateTo","op":{"create":{"req":true,"type":"`$STRING`"}},"r":false,"t":"`$STRING`","key$":"transactionDateTo","index$":4},"transactionsCount":{"a":true,"h":"Transactions Count","n":"transactionsCount","r":false,"t":"`$ARRAY`","key$":"transactionsCount","index$":5}},"name":"transactions_count_card_brand","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/countTransactionsByCardBrand","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/countTransactionsByCardBrand","q":{},"r":{},"s":[{"lit":"public"},{"lit":"countTransactionsByCardBrand"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"transactions_count_card_brand","name__orig":"transactions_count_card_brand","Name":"TransactionsCountCardBrand","name_":"transactions_count_card_brand","name-":"transactions-count-card-brand","NAME":"TRANSACTIONS_COUNT_CARD_BRAND","index$":35}, {"active":true,"entity":"transactions_count_card_brand","key$":"BasicTransactionsCountCardBrandFlow","kind":"basic","name":"BasicTransactionsCountCardBrandFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"transactions_count_card_brand_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'TransactionsCountCardBrand', {"POST /public/countTransactionsByCardBrand":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"transactionDateFrom":{"type":"string","format":"date-time","key$":"transactionDateFrom"},"transactionDateTo":{"type":"string","format":"date-time","key$":"transactionDateTo"},"period":{"type":"string","pattern":"HOUR|DAY|MONTH|YEAR","key$":"period"}},"required":["transactionDateFrom","transactionDateTo"],"x-ref":"#/components/schemas/TransactionsCountRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const transactions_count_card_brand_ref01_ent = client.TransactionsCountCardBrand()
    let transactions_count_card_brand_ref01_data = setup.data.new.transactions_count_card_brand['transactions_count_card_brand_ref01']

    transactions_count_card_brand_ref01_data = (await transactions_count_card_brand_ref01_ent.create(transactions_count_card_brand_ref01_data)).data()
    assert(null != transactions_count_card_brand_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/transactions_count_card_brand/TransactionsCountCardBrandTestData.json')

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
    ['transactions_count_card_brand01','transactions_count_card_brand02','transactions_count_card_brand03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_COUNT_CARD_BRAND_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_COUNT_CARD_BRAND_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_COUNT_CARD_BRAND_ENTID']
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
  
