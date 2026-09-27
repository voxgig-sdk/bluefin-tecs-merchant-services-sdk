

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


describe('EcomParameterEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.EcomParameter()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'ecom_parameter.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"ecomPass":{"a":true,"h":"Ecom Pass","n":"ecomPass","r":false,"t":"`$STRING`","key$":"ecomPass","index$":0},"ecomSkey":{"a":true,"h":"Ecom Skey","n":"ecomSkey","r":false,"t":"`$STRING`","key$":"ecomSkey","index$":1},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":2},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":3},"terminalId":{"a":true,"fo":"int32","h":"Terminal Id","n":"terminalId","r":true,"t":"`$INTEGER`","key$":"terminalId","index$":4}},"name":"ecom_parameter","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/getEcomParameters","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/getEcomParameters","q":{},"r":{},"s":[{"lit":"public"},{"lit":"getEcomParameters"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"ecom_parameter","name__orig":"ecom_parameter","Name":"EcomParameter","name_":"ecom_parameter","name-":"ecom-parameter","NAME":"ECOM_PARAMETER","index$":8}, {"active":true,"entity":"ecom_parameter","key$":"BasicEcomParameterFlow","kind":"basic","name":"BasicEcomParameterFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"ecom_parameter_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'EcomParameter', {"POST /public/getEcomParameters":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"terminalId":{"type":"integer","format":"int32","key$":"terminalId"}},"required":["terminalId"],"x-ref":"#/components/schemas/GetEcomParametersRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const ecom_parameter_ref01_ent = client.EcomParameter()
    let ecom_parameter_ref01_data = setup.data.new.ecom_parameter['ecom_parameter_ref01']

    ecom_parameter_ref01_data = (await ecom_parameter_ref01_ent.create(ecom_parameter_ref01_data)).data()
    assert(null != ecom_parameter_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/ecom_parameter/EcomParameterTestData.json')

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
    ['ecom_parameter01','ecom_parameter02','ecom_parameter03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_ECOM_PARAMETER_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_ECOM_PARAMETER_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_ECOM_PARAMETER_ENTID']
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
  
