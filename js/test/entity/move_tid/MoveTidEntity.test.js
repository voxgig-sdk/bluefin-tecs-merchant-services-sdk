
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


describe('MoveTidEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.MoveTid()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"productorderuuids":{"a":true,"h":"Productorderuuids","n":"productorderuuids","r":true,"t":"`$ARRAY`","key$":"productorderuuids","index$":0},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":1},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":2},"targetPackageorderuuid":{"a":true,"h":"Target Packageorderuuid","n":"targetPackageorderuuid","r":false,"t":"`$STRING`","key$":"targetPackageorderuuid","index$":3},"targetProductorderuuid":{"a":true,"h":"Target Productorderuuid","n":"targetProductorderuuid","r":false,"t":"`$STRING`","key$":"targetProductorderuuid","index$":4}},"name":"move_tid","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /moveTid","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/moveTid","q":{},"r":{},"s":[{"lit":"moveTid"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"move_tid","name__orig":"move_tid","Name":"MoveTid","name_":"move_tid","name-":"move-tid","NAME":"MOVE_TID","index$":22}, {"active":true,"entity":"move_tid","key$":"BasicMoveTidFlow","kind":"basic","name":"BasicMoveTidFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"move_tid_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'MoveTid', {"POST /moveTid":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"productorderuuids":{"type":"array","items":{"type":"string"},"minItems":1,"key$":"productorderuuids"},"targetPackageorderuuid":{"type":"string","key$":"targetPackageorderuuid"},"targetProductorderuuid":{"type":"string","key$":"targetProductorderuuid"}},"required":["productorderuuids"],"x-ref":"#/components/schemas/MoveTidRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const move_tid_ref01_ent = client.MoveTid()
    let move_tid_ref01_data = setup.data.new.move_tid['move_tid_ref01']

    move_tid_ref01_data = (await move_tid_ref01_ent.create(move_tid_ref01_data)).data()
    assert(null != move_tid_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/move_tid/MoveTidTestData.json')

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
    ['move_tid01','move_tid02','move_tid03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MOVE_TID_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MOVE_TID_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MOVE_TID_ENTID']
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
  
