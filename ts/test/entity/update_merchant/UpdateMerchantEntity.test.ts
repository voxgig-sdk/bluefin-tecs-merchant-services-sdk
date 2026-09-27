

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


describe('UpdateMerchantEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.UpdateMerchant()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'update_merchant.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"city":{"a":true,"h":"City","n":"city","r":false,"t":"`$STRING`","key$":"city","index$":0},"corporateUuid":{"a":true,"h":"Corporate Uuid","n":"corporateUuid","r":true,"t":"`$STRING`","key$":"corporateUuid","index$":1},"country":{"a":true,"h":"Country","n":"country","r":false,"t":"`$STRING`","key$":"country","index$":2},"merchantCategoryCode":{"a":true,"h":"Merchant Category Code","n":"merchantCategoryCode","r":false,"t":"`$STRING`","key$":"merchantCategoryCode","index$":3},"name":{"a":true,"h":"Name","n":"name","r":false,"t":"`$STRING`","key$":"name","index$":4},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":5},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":6},"state":{"a":true,"h":"State","n":"state","r":false,"t":"`$STRING`","key$":"state","index$":7},"street":{"a":true,"h":"Street","n":"street","r":false,"t":"`$STRING`","key$":"street","index$":8},"vuNummer":{"a":true,"h":"Vu Nummer","n":"vuNummer","r":false,"t":"`$STRING`","key$":"vuNummer","index$":9},"zipcode":{"a":true,"h":"Zipcode","n":"zipcode","r":false,"t":"`$STRING`","key$":"zipcode","index$":10}},"name":"update_merchant","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/updateMerchant","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/updateMerchant","q":{},"r":{},"s":[{"lit":"public"},{"lit":"updateMerchant"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"update_merchant","name__orig":"update_merchant","Name":"UpdateMerchant","name_":"update_merchant","name-":"update-merchant","NAME":"UPDATE_MERCHANT","index$":37}, {"active":true,"entity":"update_merchant","key$":"BasicUpdateMerchantFlow","kind":"basic","name":"BasicUpdateMerchantFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"update_merchant_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'UpdateMerchant', {"POST /public/updateMerchant":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"corporateUuid":{"type":"string","minLength":1,"key$":"corporateUuid"},"name":{"type":"string","key$":"name"},"vuNummer":{"type":"string","maxLength":15,"minLength":0,"key$":"vuNummer"},"country":{"type":"string","key$":"country"},"city":{"type":"string","key$":"city"},"state":{"type":"string","key$":"state"},"zipcode":{"type":"string","key$":"zipcode"},"street":{"type":"string","key$":"street"},"merchantCategoryCode":{"type":"string","maxLength":100,"minLength":0,"key$":"merchantCategoryCode"}},"required":["corporateUuid"],"x-ref":"#/components/schemas/UpdateMerchantRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const update_merchant_ref01_ent = client.UpdateMerchant()
    let update_merchant_ref01_data = setup.data.new.update_merchant['update_merchant_ref01']

    update_merchant_ref01_data = (await update_merchant_ref01_ent.create(update_merchant_ref01_data)).data()
    assert(null != update_merchant_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/update_merchant/UpdateMerchantTestData.json')

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
    ['update_merchant01','update_merchant02','update_merchant03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_UPDATE_MERCHANT_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_UPDATE_MERCHANT_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_UPDATE_MERCHANT_ENTID']
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
  
