
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


describe('DeactivateTerminalEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.DeactivateTerminal()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"corporateUuid":{"a":true,"h":"Corporate Uuid","n":"corporateUuid","r":false,"t":"`$STRING`","key$":"corporateUuid","index$":0},"deactivationReason":{"a":true,"h":"Deactivation Reason","n":"deactivationReason","r":true,"t":"`$STRING`","key$":"deactivationReason","index$":1},"packageOrderUuid":{"a":true,"h":"Package Order Uuid","n":"packageOrderUuid","r":false,"t":"`$STRING`","key$":"packageOrderUuid","index$":2},"productOrderUuid":{"a":true,"h":"Product Order Uuid","n":"productOrderUuid","r":false,"t":"`$STRING`","key$":"productOrderUuid","index$":3},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":4},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":5},"terminalId":{"a":true,"fo":"int32","h":"Terminal Id","n":"terminalId","r":true,"t":"`$INTEGER`","key$":"terminalId","index$":6}},"name":"deactivate_terminal","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /deactivateTerminal","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/deactivateTerminal","q":{},"r":{},"s":[{"lit":"deactivateTerminal"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"deactivate_terminal","name__orig":"deactivate_terminal","Name":"DeactivateTerminal","name_":"deactivate_terminal","name-":"deactivate-terminal","NAME":"DEACTIVATE_TERMINAL","index$":5}, {"active":true,"entity":"deactivate_terminal","key$":"BasicDeactivateTerminalFlow","kind":"basic","name":"BasicDeactivateTerminalFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"deactivate_terminal_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'DeactivateTerminal', {"POST /deactivateTerminal":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"terminalId":{"type":"integer","format":"int32","key$":"terminalId"},"deactivationReason":{"type":"string","minLength":1,"key$":"deactivationReason"}},"required":["deactivationReason","terminalId"],"x-ref":"#/components/schemas/DeactivateTerminalRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const deactivate_terminal_ref01_ent = client.DeactivateTerminal()
    let deactivate_terminal_ref01_data = setup.data.new.deactivate_terminal['deactivate_terminal_ref01']

    deactivate_terminal_ref01_data = (await deactivate_terminal_ref01_ent.create(deactivate_terminal_ref01_data)).data()
    assert(null != deactivate_terminal_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/deactivate_terminal/DeactivateTerminalTestData.json')

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
    ['deactivate_terminal01','deactivate_terminal02','deactivate_terminal03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_DEACTIVATE_TERMINAL_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_DEACTIVATE_TERMINAL_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_DEACTIVATE_TERMINAL_ENTID']
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
  
