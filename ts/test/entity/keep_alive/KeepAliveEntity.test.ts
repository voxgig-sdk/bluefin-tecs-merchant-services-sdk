

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


describe('KeepAliveEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.KeepAlive()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'keep_alive.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"hwserialno":{"a":true,"h":"Hwserialno","n":"hwserialno","r":false,"t":"`$STRING`","key$":"hwserialno","index$":0},"kaDateTimeFrom":{"a":true,"h":"Ka Date Time From","n":"kaDateTimeFrom","r":false,"t":"`$STRING`","key$":"kaDateTimeFrom","index$":1},"kaDateTimeTo":{"a":true,"h":"Ka Date Time To","n":"kaDateTimeTo","r":false,"t":"`$STRING`","key$":"kaDateTimeTo","index$":2},"keepAliveData":{"a":true,"h":"Keep Alive Data","n":"keepAliveData","r":false,"t":"`$ARRAY`","key$":"keepAliveData","index$":3},"pagination":{"a":true,"h":"Pagination","n":"pagination","r":false,"t":"`$OBJECT`","key$":"pagination","index$":4},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":5},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":6},"terminalDateTimeFrom":{"a":true,"h":"Terminal Date Time From","n":"terminalDateTimeFrom","r":false,"t":"`$STRING`","key$":"terminalDateTimeFrom","index$":7},"terminalDateTimeTo":{"a":true,"h":"Terminal Date Time To","n":"terminalDateTimeTo","r":false,"t":"`$STRING`","key$":"terminalDateTimeTo","index$":8},"terminalId":{"a":true,"fo":"int32","h":"Terminal Id","n":"terminalId","r":false,"t":"`$INTEGER`","key$":"terminalId","index$":9}},"name":"keep_alive","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/keepalive","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/keepalive","q":{},"r":{},"s":[{"lit":"public"},{"lit":"keepalive"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"keep_alive","name__orig":"keep_alive","Name":"KeepAlive","name_":"keep_alive","name-":"keep-alive","NAME":"KEEP_ALIVE","index$":16}, {"active":true,"entity":"keep_alive","key$":"BasicKeepAliveFlow","kind":"basic","name":"BasicKeepAliveFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"keep_alive_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'KeepAlive', {"POST /public/keepalive":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"terminalId":{"type":"integer","format":"int32","key$":"terminalId"},"hwserialno":{"type":"string","key$":"hwserialno"},"kaDateTimeFrom":{"type":"string","example":"2024-04-11T11:41:31","pattern":"yyyy-MM-dd'T'HH:mm:ss","key$":"kaDateTimeFrom"},"kaDateTimeTo":{"type":"string","example":"2024-04-11T11:41:31","pattern":"yyyy-MM-dd'T'HH:mm:ss","key$":"kaDateTimeTo"},"terminalDateTimeFrom":{"type":"string","example":"2024-04-11T11:41:31","pattern":"yyyy-MM-dd'T'HH:mm:ss","key$":"terminalDateTimeFrom"},"terminalDateTimeTo":{"type":"string","example":"2024-04-11T11:41:31","pattern":"yyyy-MM-dd'T'HH:mm:ss","key$":"terminalDateTimeTo"},"pagination":{"type":"object","properties":{"page":{"type":"integer","format":"int32"},"size":{"type":"integer","format":"int32"}},"x-ref":"#/components/schemas/PaginationRequest","key$":"pagination"}},"x-ref":"#/components/schemas/KeepAliveRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const keep_alive_ref01_ent = client.KeepAlive()
    let keep_alive_ref01_data = setup.data.new.keep_alive['keep_alive_ref01']

    keep_alive_ref01_data = (await keep_alive_ref01_ent.create(keep_alive_ref01_data)).data()
    assert(null != keep_alive_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/keep_alive/KeepAliveTestData.json')

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
    ['keep_alive01','keep_alive02','keep_alive03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_KEEP_ALIVE_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_KEEP_ALIVE_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_KEEP_ALIVE_ENTID']
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
  
