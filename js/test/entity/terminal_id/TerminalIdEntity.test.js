
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


describe('TerminalIdEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.TerminalId()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"deviceSerialNumber":{"a":true,"h":"Device Serial Number","n":"deviceSerialNumber","r":true,"t":"`$ARRAY`","key$":"deviceSerialNumber","index$":0},"duplicateTerminalIds":{"a":true,"h":"Duplicate Terminal Ids","n":"duplicateTerminalIds","r":false,"t":"`$ARRAY`","key$":"duplicateTerminalIds","index$":1},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":2},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":3},"terminals":{"a":true,"h":"Terminals","n":"terminals","r":false,"t":"`$ARRAY`","key$":"terminals","index$":4}},"name":"terminal_id","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/getTerminalId","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/getTerminalId","q":{},"r":{},"s":[{"lit":"public"},{"lit":"getTerminalId"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"terminal_id","name__orig":"terminal_id","Name":"TerminalId","name_":"terminal_id","name-":"terminal-id","NAME":"TERMINAL_ID","index$":33}, {"active":true,"entity":"terminal_id","key$":"BasicTerminalIdFlow","kind":"basic","name":"BasicTerminalIdFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"terminal_id_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'TerminalId', {"POST /public/getTerminalId":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"deviceSerialNumber":{"type":"array","items":{"type":"string"},"maxItems":2147483647,"minItems":1,"key$":"deviceSerialNumber"}},"required":["deviceSerialNumber"],"x-ref":"#/components/schemas/GetTerminalIdRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const terminal_id_ref01_ent = client.TerminalId()
    let terminal_id_ref01_data = setup.data.new.terminal_id['terminal_id_ref01']

    terminal_id_ref01_data = (await terminal_id_ref01_ent.create(terminal_id_ref01_data)).data()
    assert(null != terminal_id_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/terminal_id/TerminalIdTestData.json')

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
    ['terminal_id01','terminal_id02','terminal_id03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TERMINAL_ID_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TERMINAL_ID_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TERMINAL_ID_ENTID']
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
  
