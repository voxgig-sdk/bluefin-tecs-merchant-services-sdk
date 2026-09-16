
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

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"hwserialno","req":false,"type":"`$STRING`","index$":0},{"active":true,"name":"kaDateTimeFrom","req":false,"type":"`$STRING`","index$":1},{"active":true,"name":"kaDateTimeTo","req":false,"type":"`$STRING`","index$":2},{"active":true,"name":"keepAliveData","req":false,"type":"`$ARRAY`","index$":3},{"active":true,"name":"pagination","req":false,"type":"`$OBJECT`","index$":4},{"active":true,"format":"int32","name":"responseCode","req":false,"type":"`$INTEGER`","index$":5},{"active":true,"name":"responseMessage","req":false,"type":"`$STRING`","index$":6},{"active":true,"name":"terminalDateTimeFrom","req":false,"type":"`$STRING`","index$":7},{"active":true,"name":"terminalDateTimeTo","req":false,"type":"`$STRING`","index$":8},{"active":true,"format":"int32","name":"terminalId","req":false,"type":"`$INTEGER`","index$":9}],"name":"keep_alive","op":{"create":{"input":"data","name":"create","points":[{"active":true,"args":{},"contract":{"id":"POST /public/keepalive","json":"{\"operationId\":\"keepAlive\",\"parameters\":[],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"hwserialno\":{\"type\":\"string\"},\"kaDateTimeFrom\":{\"example\":\"2024-04-11T11:41:31\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ss\",\"type\":\"string\"},\"kaDateTimeTo\":{\"example\":\"2024-04-11T11:41:31\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ss\",\"type\":\"string\"},\"pagination\":{\"properties\":{\"page\":{\"format\":\"int32\",\"type\":\"integer\"},\"size\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"},\"terminalDateTimeFrom\":{\"example\":\"2024-04-11T11:41:31\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ss\",\"type\":\"string\"},\"terminalDateTimeTo\":{\"example\":\"2024-04-11T11:41:31\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ss\",\"type\":\"string\"},\"terminalId\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"keepAliveData\":{\"items\":{\"properties\":{\"hwSerialNo\":{\"type\":\"string\"},\"kaConfigParams\":{\"type\":\"string\"},\"kaDateTime\":{\"format\":\"date-time\",\"type\":\"string\"},\"kaResponseCode\":{\"type\":\"number\"},\"pinPadFw\":{\"type\":\"string\"},\"pinPadFwExpec\":{\"type\":\"string\"},\"pinPadSn\":{\"type\":\"string\"},\"pinPadSnExpec\":{\"type\":\"string\"},\"responseConfigParam\":{\"type\":\"string\"},\"responseDateTime\":{\"format\":\"date-time\",\"type\":\"string\"},\"swVersion\":{\"type\":\"string\"},\"swVersionExpec\":{\"type\":\"string\"},\"termConfigParams\":{\"type\":\"string\"},\"terminalDateTime\":{\"format\":\"date-time\",\"type\":\"string\"},\"terminalId\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"},\"type\":\"array\"},\"pagination\":{\"properties\":{\"page\":{\"format\":\"int32\",\"type\":\"integer\"},\"size\":{\"format\":\"int32\",\"type\":\"integer\"},\"totalElements\":{\"format\":\"int64\",\"type\":\"integer\"},\"totalPages\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"},\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Successful operation\"},\"401\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Unauthorized - Authentication failed, e.g. MandatorId does not march\"},\"403\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Forbidden - Missing role: TE_KEEP_ALIVE_LIST\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\n* Internal server error\\n\"}},\"security\":[{\"bearer-key\":[]}],\"securitySchemes\":{\"basic-key\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-key\":{\"bearerFormat\":\"JWT\",\"scheme\":\"bearer\",\"type\":\"http\"},\"tecsweb-key\":{\"description\":\"TecsWeb token\",\"in\":\"header\",\"name\":\"TecsWebToken\",\"type\":\"apiKey\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/public/keepalive","segments":[{"lit":"public"},{"lit":"keepalive"}],"select":{},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"keep_alive","name__orig":"keep_alive","Name":"KeepAlive","name_":"keep_alive","name-":"keep-alive","NAME":"KEEP_ALIVE","index$":14}, {"active":true,"entity":"keep_alive","key$":"BasicKeepAliveFlow","kind":"basic","name":"BasicKeepAliveFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"keep_alive_ref01"},"match":{},"op":"create","spec":[],"valid":[],"index$":0}]}, 'KeepAlive')
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



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

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
  
