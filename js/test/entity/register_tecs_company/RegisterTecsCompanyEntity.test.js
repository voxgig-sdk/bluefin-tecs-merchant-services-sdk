
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

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"corporateUuid":{"a":true,"h":"Corporate Uuid","n":"corporateUuid","r":true,"t":"`$STRING`","key$":"corporateUuid","index$":0},"packageOrderUuid":{"a":true,"h":"Package Order Uuid","n":"packageOrderUuid","r":true,"t":"`$STRING`","key$":"packageOrderUuid","index$":1},"partnerId":{"a":true,"fo":"int32","h":"Partner Id","n":"partnerId","r":false,"t":"`$INTEGER`","key$":"partnerId","index$":2},"partnerName":{"a":true,"h":"Partner Name","n":"partnerName","r":false,"t":"`$STRING`","key$":"partnerName","index$":3},"productOrderUuid":{"a":true,"h":"Product Order Uuid","n":"productOrderUuid","r":true,"t":"`$STRING`","key$":"productOrderUuid","index$":4},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":5},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":6},"templateName":{"a":true,"h":"Template Name","n":"templateName","r":true,"t":"`$STRING`","key$":"templateName","index$":7}},"name":"register_tecs_company","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /registerTecsCompany","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/registerTecsCompany","q":{},"r":{},"s":[{"lit":"registerTecsCompany"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"register_tecs_company","name__orig":"register_tecs_company","Name":"RegisterTecsCompany","name_":"register_tecs_company","name-":"register-tecs-company","NAME":"REGISTER_TECS_COMPANY","index$":28}, {"active":true,"entity":"register_tecs_company","key$":"BasicRegisterTecsCompanyFlow","kind":"basic","name":"BasicRegisterTecsCompanyFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"register_tecs_company_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'RegisterTecsCompany', {"POST /registerTecsCompany":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"corporateUuid":{"type":"string","minLength":1,"key$":"corporateUuid"},"packageOrderUuid":{"type":"string","minLength":1,"key$":"packageOrderUuid"},"productOrderUuid":{"type":"string","minLength":1,"key$":"productOrderUuid"},"templateName":{"type":"string","minLength":1,"key$":"templateName"},"partnerId":{"type":"integer","format":"int32","key$":"partnerId"},"partnerName":{"type":"string","key$":"partnerName"}},"required":["corporateUuid","packageOrderUuid","productOrderUuid","templateName"],"x-ref":"#/components/schemas/RegisterTecsCompanyRequest","index$":1}}},"required":true},"parameters":[]}})
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



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

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
  
