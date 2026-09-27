

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


describe('CreateProductEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.CreateProduct()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'create_product.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"acquirerId":{"a":true,"fo":"int32","h":"Acquirer Id","n":"acquirerId","r":false,"t":"`$INTEGER`","key$":"acquirerId","index$":0},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":1},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":2},"templateName":{"a":true,"h":"Template Name","n":"templateName","r":true,"t":"`$STRING`","key$":"templateName","index$":3},"templateType":{"a":true,"h":"Template Type","n":"templateType","r":true,"t":"`$STRING`","key$":"templateType","index$":4},"templateXml":{"a":true,"h":"Template Xml","n":"templateXml","r":true,"t":"`$STRING`","key$":"templateXml","index$":5},"terminalType":{"a":true,"h":"Terminal Type","n":"terminalType","r":true,"t":"`$STRING`","key$":"terminalType","index$":6}},"name":"create_product","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /createProduct","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/createProduct","q":{},"r":{},"s":[{"lit":"createProduct"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"create_product","name__orig":"create_product","Name":"CreateProduct","name_":"create_product","name-":"create-product","NAME":"CREATE_PRODUCT","index$":4}, {"active":true,"entity":"create_product","key$":"BasicCreateProductFlow","kind":"basic","name":"BasicCreateProductFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"create_product_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'CreateProduct', {"POST /createProduct":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"templateName":{"type":"string","maxLength":100,"minLength":0,"key$":"templateName"},"templateXml":{"type":"string","minLength":1,"key$":"templateXml"},"templateType":{"type":"string","minLength":1,"pattern":"acquirer|terminal","key$":"templateType"},"terminalType":{"type":"string","maxLength":100,"minLength":0,"key$":"terminalType"},"acquirerId":{"type":"integer","format":"int32","key$":"acquirerId"}},"required":["templateName","templateType","templateXml","terminalType"],"x-ref":"#/components/schemas/CreateProductRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const create_product_ref01_ent = client.CreateProduct()
    let create_product_ref01_data = setup.data.new.create_product['create_product_ref01']

    create_product_ref01_data = (await create_product_ref01_ent.create(create_product_ref01_data)).data()
    assert(null != create_product_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/create_product/CreateProductTestData.json')

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
    ['create_product01','create_product02','create_product03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CREATE_PRODUCT_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CREATE_PRODUCT_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CREATE_PRODUCT_ENTID']
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
  
