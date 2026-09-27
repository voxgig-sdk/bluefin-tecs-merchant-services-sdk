
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


describe('ListTerminalEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.ListTerminal()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"corporateUuid":{"a":true,"h":"Corporate Uuid","n":"corporateUuid","r":false,"t":"`$ARRAY`","key$":"corporateUuid","index$":0},"filter":{"a":true,"h":"Filter","n":"filter","r":false,"t":"`$OBJECT`","key$":"filter","index$":1},"pagination":{"a":true,"h":"Pagination","n":"pagination","r":false,"t":"`$OBJECT`","key$":"pagination","index$":2},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":3},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":4},"terminals":{"a":true,"h":"Terminals","n":"terminals","r":false,"t":"`$ARRAY`","key$":"terminals","index$":5}},"name":"list_terminal","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/listTerminals","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/listTerminals","q":{},"r":{},"s":[{"lit":"public"},{"lit":"listTerminals"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"list_terminal","name__orig":"list_terminal","Name":"ListTerminal","name_":"list_terminal","name-":"list-terminal","NAME":"LIST_TERMINAL","index$":17}, {"active":true,"entity":"list_terminal","key$":"BasicListTerminalFlow","kind":"basic","name":"BasicListTerminalFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"list_terminal_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'ListTerminal', {"POST /public/listTerminals":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"corporateUuid":{"type":"array","items":{"type":"string"},"key$":"corporateUuid"},"filter":{"type":"object","properties":{"corporateUuid":{"type":"array","items":{"type":"string"}},"hwserialno":{"type":"array","items":{"type":"string"}},"fulltextSearch":{"type":"string"},"terminalType":{"type":"string"}},"x-ref":"#/components/schemas/Filter","key$":"filter"},"pagination":{"type":"object","properties":{"page":{"type":"integer","format":"int32"},"size":{"type":"integer","format":"int32"}},"x-ref":"#/components/schemas/PaginationRequest","key$":"pagination"}},"x-ref":"#/components/schemas/ListTerminalsRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const list_terminal_ref01_ent = client.ListTerminal()
    let list_terminal_ref01_data = setup.data.new.list_terminal['list_terminal_ref01']

    list_terminal_ref01_data = (await list_terminal_ref01_ent.create(list_terminal_ref01_data)).data()
    assert(null != list_terminal_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/list_terminal/ListTerminalTestData.json')

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
    ['list_terminal01','list_terminal02','list_terminal03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIST_TERMINAL_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIST_TERMINAL_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIST_TERMINAL_ENTID']
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
  
