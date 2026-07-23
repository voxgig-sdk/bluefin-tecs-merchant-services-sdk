
const envlocal = __dirname + '/../../../.env.local'
require('dotenv').config({ quiet: true, path: [envlocal] })

const Path = require('node:path')
const Fs = require('node:fs')

const { test, describe } = require('node:test')
const assert = require('node:assert')


const { BluefinTecsMerchantServicesSDK, BaseFeature, stdutil, config } = require('../../..')

const {
  envOverride,
  makeCtrl,
  makeMatch,
  makeReqdata,
  makeStepData,
  makeValid,
} = require('../../utility')


describe('TransactionsTurnoverEntity', async () => {

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.TransactionsTurnover()
    assert(null != ent)
  })


  // Feature #4: the entity `stream(action, ...)` method runs the op pipeline
  // and returns an async iterator over result items. With the streaming
  // feature active it yields the feature's incremental output; otherwise it
  // falls back to the materialised list so `stream` always yields.
  test('stream', async () => {
    const seed = {
      entity: {
        transactions_turnover: { s1: { id: 's1' }, s2: { id: 's2' }, s3: { id: 's3' } }
      }
    }

    // Fallback: streaming inactive -> yields the materialised list items.
    const base = BluefinTecsMerchantServicesSDK.test(seed)
    const seen = []
    for await (const item of base.TransactionsTurnover().stream('list')) {
      seen.push(item)
    }
    assert.equal(seen.length, 3)

    // Inbound: streaming active -> yields each item from the feature iterator.
    if (config.feature && config.feature.streaming) {
      const sdk = BluefinTecsMerchantServicesSDK.test(seed, { feature: { streaming: { active: true } } })
      const got = []
      for await (const item of sdk.TransactionsTurnover().stream('list')) {
        if (Array.isArray(item)) { got.push(...item) } else { got.push(item) }
      }
      assert.equal(got.length, 3)
    }
  })


  test('basic', async () => {

    const setup = basicSetup()
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const transactions_turnover_ref01_ent = client.TransactionsTurnover()
    let transactions_turnover_ref01_data = setup.data.new.transactions_turnover['transactions_turnover_ref01']

    transactions_turnover_ref01_data = await transactions_turnover_ref01_ent.create(transactions_turnover_ref01_data)
    assert(null != transactions_turnover_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/transactions_turnover/TransactionsTurnoverTestData.json')

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
    ['transactions_turnover01','transactions_turnover02','transactions_turnover03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_TURNOVER_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': 'NONE',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_TURNOVER_ENTID']

  if ('TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE) {
    client = new BluefinTecsMerchantServicesSDK(merge([
      {
        apikey: env.BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY,
      },
      extra
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
    now: Date.now(),
  }

  return setup
}
  
