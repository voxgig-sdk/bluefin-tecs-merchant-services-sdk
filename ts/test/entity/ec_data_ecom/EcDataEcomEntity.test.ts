

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


describe('EcDataEcomEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.EcDataEcom()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'ec_data_ecom.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"ecomData":{"a":true,"h":"Ecom Data","n":"ecomData","r":false,"t":"`$STRING`","key$":"ecomData","index$":0},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":1},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":2},"terminalId":{"a":true,"fo":"int32","h":"Terminal Id","n":"terminalId","r":true,"t":"`$INTEGER`","key$":"terminalId","index$":3},"transactionId":{"a":true,"h":"Transaction Id","n":"transactionId","r":true,"t":"`$STRING`","key$":"transactionId","index$":4},"transactionType":{"a":true,"h":"Transaction Type","n":"transactionType","r":true,"t":"`$STRING`","key$":"transactionType","index$":5}},"name":"ec_data_ecom","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/getEcData","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/getEcData","q":{},"r":{},"s":[{"lit":"public"},{"lit":"getEcData"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"ec_data_ecom","name__orig":"ec_data_ecom","Name":"EcDataEcom","name_":"ec_data_ecom","name-":"ec-data-ecom","NAME":"EC_DATA_ECOM","index$":7}, {"active":true,"entity":"ec_data_ecom","key$":"BasicEcDataEcomFlow","kind":"basic","name":"BasicEcDataEcomFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"ec_data_ecom_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'EcDataEcom', {"POST /public/getEcData":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"transactionId":{"type":"string","minLength":1,"key$":"transactionId"},"terminalId":{"type":"integer","format":"int32","key$":"terminalId"},"transactionType":{"type":"string","key$":"transactionType"}},"required":["terminalId","transactionId","transactionType"],"x-ref":"#/components/schemas/GetEcDataEcomRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const ec_data_ecom_ref01_ent = client.EcDataEcom()
    let ec_data_ecom_ref01_data = setup.data.new.ec_data_ecom['ec_data_ecom_ref01']

    ec_data_ecom_ref01_data = (await ec_data_ecom_ref01_ent.create(ec_data_ecom_ref01_data)).data()
    assert(null != ec_data_ecom_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/ec_data_ecom/EcDataEcomTestData.json')

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
    ['ec_data_ecom01','ec_data_ecom02','ec_data_ecom03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EC_DATA_ECOM_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EC_DATA_ECOM_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EC_DATA_ECOM_ENTID']
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
  
