

import Path from 'node:path'
import * as Fs from 'node:fs'

import { test, describe, afterEach } from 'node:test'
import assert from 'node:assert'
import { createLiveTransport } from '../../live-runner'
import { runLiveEntity } from '../../live-entity'


import { BluefinTecsMerchantServicesSDK, BaseFeature, stdutil } from '../../..'

import {
  envOverride,
  liveClientOptions,
  liveDelay,
  loadEnvLocal,
  makeCtrl,
  makeMatch,
  makeReqdata,
  makeStepData,
  makeValid,
  maybeSkipControl,
} from '../../utility'


loadEnvLocal(__dirname + '/../../../.env.local')


describe('TransactionsTurnoverEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.TransactionsTurnover()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'transactions_turnover.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"period":{"a":true,"h":"Period","n":"period","r":false,"t":"`$STRING`","key$":"period","index$":0},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":1},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":2},"transactionDateFrom":{"a":true,"fo":"date-time","h":"Transaction Date From","n":"transactionDateFrom","op":{"create":{"req":true,"type":"`$STRING`"}},"r":false,"t":"`$STRING`","key$":"transactionDateFrom","index$":3},"transactionDateTo":{"a":true,"fo":"date-time","h":"Transaction Date To","n":"transactionDateTo","op":{"create":{"req":true,"type":"`$STRING`"}},"r":false,"t":"`$STRING`","key$":"transactionDateTo","index$":4},"turnovers":{"a":true,"h":"Turnovers","n":"turnovers","r":false,"t":"`$ARRAY`","key$":"turnovers","index$":5}},"name":"transactions_turnover","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/transactionTurnover","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/transactionTurnover","q":{},"r":{},"s":[{"lit":"public"},{"lit":"transactionTurnover"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"transactions_turnover","name__orig":"transactions_turnover","Name":"TransactionsTurnover","name_":"transactions_turnover","name-":"transactions-turnover","NAME":"TRANSACTIONS_TURNOVER","index$":36}, {"active":true,"entity":"transactions_turnover","key$":"BasicTransactionsTurnoverFlow","kind":"basic","name":"BasicTransactionsTurnoverFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"transactions_turnover_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'TransactionsTurnover', {"POST /public/transactionTurnover":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"transactionDateFrom":{"type":"string","format":"date-time","key$":"transactionDateFrom"},"transactionDateTo":{"type":"string","format":"date-time","key$":"transactionDateTo"},"period":{"type":"string","pattern":"HOUR|DAY|MONTH|YEAR","key$":"period"}},"required":["transactionDateFrom","transactionDateTo"],"x-ref":"#/components/schemas/TransactionTurnoverRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const transactions_turnover_ref01_ent = client.TransactionsTurnover()
    let transactions_turnover_ref01_data = setup.data.new.transactions_turnover['transactions_turnover_ref01']

    transactions_turnover_ref01_data = (await transactions_turnover_ref01_ent.create(transactions_turnover_ref01_data)).data()
    assert(null != transactions_turnover_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

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
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_TURNOVER_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTIONS_TURNOVER_ENTID']
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
      // 'extra || {}', not a bare 'extra': struct.merge returns UNDEFINED when the
      // last entry is undefined, and basicSetup is normally called with no
      // argument at all - so a bare 'extra' silently discarded the apikey
      // and server values above and handed the SDK undefined. Harmless
      // while there was nothing in that object; not harmless now.
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
  
