

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


// AFTER the imports on purpose: TypeScript hoists `import` above any
// statement in the emitted CommonJS, so a loader placed above them would
// run only after every imported module had already been evaluated - and
// anything reading process.env at module scope would miss these values.
loadEnvLocal(__dirname + '/../../../.env.local')


describe('EnableAcquiringEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.EnableAcquiring()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'enable_acquiring.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"format":"int32","name":"accountNo","req":false,"type":"`$INTEGER`","index$":0},{"active":true,"name":"additionalData","req":false,"type":"`$OBJECT`","index$":1},{"active":true,"name":"corporateUuid","req":true,"type":"`$STRING`","index$":2},{"active":true,"name":"currency","req":true,"type":"`$STRING`","index$":3},{"active":true,"format":"int32","name":"merchantCategoryCode","req":true,"type":"`$INTEGER`","index$":4},{"active":true,"name":"packageOrderUuid","req":true,"type":"`$STRING`","index$":5},{"active":true,"name":"productOrderUuid","req":true,"type":"`$STRING`","index$":6},{"active":true,"format":"int32","name":"responseCode","req":false,"type":"`$INTEGER`","index$":7},{"active":true,"name":"responseMessage","req":false,"type":"`$STRING`","index$":8},{"active":true,"format":"int32","name":"sortingCode","req":false,"type":"`$INTEGER`","index$":9},{"active":true,"name":"templateName","req":true,"type":"`$STRING`","index$":10},{"active":true,"name":"terminalIdAcq","req":false,"type":"`$STRING`","index$":11},{"active":true,"name":"terminalIds","req":false,"type":"`$ARRAY`","index$":12},{"active":true,"name":"vuNummer","req":false,"type":"`$STRING`","index$":13}],"name":"enable_acquiring","op":{"create":{"input":"data","name":"create","points":[{"active":true,"args":{},"contract":{"id":"POST /enableAcquiring","json":"{\"operationId\":\"enableAcquiring\",\"parameters\":[],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"accountNo\":{\"format\":\"int32\",\"type\":\"integer\"},\"additionalData\":{\"additionalProperties\":{\"type\":\"string\"},\"type\":\"object\"},\"corporateUuid\":{\"minLength\":1,\"type\":\"string\"},\"currency\":{\"maxLength\":3,\"minLength\":3,\"type\":\"string\"},\"merchantCategoryCode\":{\"format\":\"int32\",\"minimum\":0,\"type\":\"integer\"},\"packageOrderUuid\":{\"minLength\":1,\"type\":\"string\"},\"productOrderUuid\":{\"minLength\":1,\"type\":\"string\"},\"sortingCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"templateName\":{\"minLength\":1,\"type\":\"string\"},\"terminalIdAcq\":{\"type\":\"string\"},\"terminalIds\":{\"items\":{\"format\":\"int32\",\"type\":\"integer\"},\"type\":\"array\"},\"vuNummer\":{\"maxLength\":15,\"minLength\":1,\"type\":\"string\"}},\"required\":[\"corporateUuid\",\"currency\",\"merchantCategoryCode\",\"packageOrderUuid\",\"productOrderUuid\",\"templateName\"],\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Successful operation\"},\"400\":{\"content\":{\"application/json\":{\"schema\":{\"type\":\"string\"}}},\"description\":\"\\n* Mandator not found\\n* Invalid template \\n* Invalid TECS company specified\\n* MandatorConfig not found\\n* Invalid country code Alpha3 specified \\n* Vu-nummer has to be unique\\n\"},\"401\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Unauthorized - Authentication failed, e.g. when user is not active\"},\"403\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Forbidden - Missing role: TE_MERCHANT_TERMINAL_MANAGEMENT\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\n* Internal server error\\n* Error getting Corporate Account\\n\"}},\"security\":[{\"bearer-key\":[]}],\"securitySchemes\":{\"basic-key\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-key\":{\"bearerFormat\":\"JWT\",\"scheme\":\"bearer\",\"type\":\"http\"},\"tecsweb-key\":{\"description\":\"TecsWeb token\",\"in\":\"header\",\"name\":\"TecsWebToken\",\"type\":\"apiKey\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/enableAcquiring","segments":[{"lit":"enableAcquiring"}],"select":{},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"enable_acquiring","name__orig":"enable_acquiring","Name":"EnableAcquiring","name_":"enable_acquiring","name-":"enable-acquiring","NAME":"ENABLE_ACQUIRING","index$":9}, {"active":true,"entity":"enable_acquiring","key$":"BasicEnableAcquiringFlow","kind":"basic","name":"BasicEnableAcquiringFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"enable_acquiring_ref01"},"match":{},"op":"create","spec":[],"valid":[],"index$":0}]}, 'EnableAcquiring')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const enable_acquiring_ref01_ent = client.EnableAcquiring()
    let enable_acquiring_ref01_data = setup.data.new.enable_acquiring['enable_acquiring_ref01']

    enable_acquiring_ref01_data = (await enable_acquiring_ref01_ent.create(enable_acquiring_ref01_data)).data()
    assert(null != enable_acquiring_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/enable_acquiring/EnableAcquiringTestData.json')

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
    ['enable_acquiring01','enable_acquiring02','enable_acquiring03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_ENABLE_ACQUIRING_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_ENABLE_ACQUIRING_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_ENABLE_ACQUIRING_ENTID']
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
  
