

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


describe('RegisterTecsCompanyEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.RegisterTecsCompany()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'register_tecs_company.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"corporateUuid","req":true,"type":"`$STRING`","index$":0},{"active":true,"name":"packageOrderUuid","req":true,"type":"`$STRING`","index$":1},{"active":true,"format":"int32","name":"partnerId","req":false,"type":"`$INTEGER`","index$":2},{"active":true,"name":"partnerName","req":false,"type":"`$STRING`","index$":3},{"active":true,"name":"productOrderUuid","req":true,"type":"`$STRING`","index$":4},{"active":true,"format":"int32","name":"responseCode","req":false,"type":"`$INTEGER`","index$":5},{"active":true,"name":"responseMessage","req":false,"type":"`$STRING`","index$":6},{"active":true,"name":"templateName","req":true,"type":"`$STRING`","index$":7}],"name":"register_tecs_company","op":{"create":{"input":"data","name":"create","points":[{"active":true,"args":{},"contract":{"id":"POST /registerTecsCompany","json":"{\"operationId\":\"registerTecsCompany\",\"parameters\":[],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"corporateUuid\":{\"minLength\":1,\"type\":\"string\"},\"packageOrderUuid\":{\"minLength\":1,\"type\":\"string\"},\"partnerId\":{\"format\":\"int32\",\"type\":\"integer\"},\"partnerName\":{\"type\":\"string\"},\"productOrderUuid\":{\"minLength\":1,\"type\":\"string\"},\"templateName\":{\"minLength\":1,\"type\":\"string\"}},\"required\":[\"corporateUuid\",\"packageOrderUuid\",\"productOrderUuid\",\"templateName\"],\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Successful operation\"},\"400\":{\"content\":{\"application/json\":{\"schema\":{\"type\":\"string\"}}},\"description\":\"\\n* Mandator not found\\n* Invalid template \\n              \"},\"401\":{\"content\":{\"application/json\":{\"schema\":{\"type\":\"string\"}}},\"description\":\"Unauthorized - Authentication failed, e.g. when user is not active\"},\"403\":{\"content\":{\"application/json\":{\"schema\":{\"type\":\"string\"}}},\"description\":\"Forbidden - Missing role: TE_MERCHANT_TERMINAL_MANAGEMENT\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"type\":\"string\"}}},\"description\":\"Internal server error\"}},\"security\":[{\"bearer-key\":[]}],\"securitySchemes\":{\"basic-key\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-key\":{\"bearerFormat\":\"JWT\",\"scheme\":\"bearer\",\"type\":\"http\"},\"tecsweb-key\":{\"description\":\"TecsWeb token\",\"in\":\"header\",\"name\":\"TecsWebToken\",\"type\":\"apiKey\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/registerTecsCompany","segments":[{"lit":"registerTecsCompany"}],"select":{},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"register_tecs_company","name__orig":"register_tecs_company","Name":"RegisterTecsCompany","name_":"register_tecs_company","name-":"register-tecs-company","NAME":"REGISTER_TECS_COMPANY","index$":26}, {"active":true,"entity":"register_tecs_company","key$":"BasicRegisterTecsCompanyFlow","kind":"basic","name":"BasicRegisterTecsCompanyFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"register_tecs_company_ref01"},"match":{},"op":"create","spec":[],"valid":[],"index$":0}]}, 'RegisterTecsCompany')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const register_tecs_company_ref01_ent = client.RegisterTecsCompany()
    let register_tecs_company_ref01_data = setup.data.new.register_tecs_company['register_tecs_company_ref01']

    register_tecs_company_ref01_data = (await register_tecs_company_ref01_ent.create(register_tecs_company_ref01_data)).data()
    assert(null != register_tecs_company_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/register_tecs_company/RegisterTecsCompanyTestData.json')

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
    ['register_tecs_company01','register_tecs_company02','register_tecs_company03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_REGISTER_TECS_COMPANY_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_REGISTER_TECS_COMPANY_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_REGISTER_TECS_COMPANY_ENTID']
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
  
