
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


describe('MerchantPortalServicesApiEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.MerchantPortalServicesApi()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"3DSecure","req":false,"type":"`$STRING`","index$":0},{"active":true,"name":"authorizationCode","req":false,"type":"`$STRING`","index$":1},{"active":true,"name":"cardBrand","req":false,"type":"`$STRING`","index$":2},{"active":true,"name":"clearingAmountFrom","req":false,"type":"`$STRING`","index$":3},{"active":true,"name":"clearingAmountTo","req":false,"type":"`$STRING`","index$":4},{"active":true,"name":"clearingCurrency","req":false,"type":"`$STRING`","index$":5},{"active":true,"name":"clearingStatus","req":false,"type":"`$STRING`","index$":6},{"active":true,"name":"corporateUUID","req":false,"type":"`$STRING`","index$":7},{"active":true,"name":"orderByTransactionDate","req":false,"type":"`$STRING`","index$":8},{"active":true,"name":"pagination","req":false,"type":"`$OBJECT`","index$":9},{"active":true,"name":"receiptNumber","req":false,"type":"`$STRING`","index$":10},{"active":true,"name":"referencedTransactionId","req":false,"type":"`$STRING`","index$":11},{"active":true,"name":"retrievalReferenceNumber","req":false,"type":"`$STRING`","index$":12},{"active":true,"format":"int32","name":"sourceId","req":false,"type":"`$INTEGER`","index$":13},{"active":true,"name":"tecsengineResponseCodeFrom","req":false,"type":"`$STRING`","index$":14},{"active":true,"name":"tecsengineResponseCodeTo","req":false,"type":"`$STRING`","index$":15},{"active":true,"format":"int32","name":"terminalId","req":false,"type":"`$INTEGER`","index$":16},{"active":true,"name":"traceNumber","req":false,"type":"`$STRING`","index$":17},{"active":true,"name":"transactionAmountFrom","req":false,"type":"`$STRING`","index$":18},{"active":true,"name":"transactionAmountTo","req":false,"type":"`$STRING`","index$":19},{"active":true,"format":"date-time","name":"transactionDateFrom","req":false,"type":"`$STRING`","index$":20},{"active":true,"format":"date-time","name":"transactionDateTo","req":false,"type":"`$STRING`","index$":21},{"active":true,"name":"transactionId","req":false,"type":"`$STRING`","index$":22},{"active":true,"name":"transactionType","req":false,"type":"`$STRING`","index$":23},{"active":true,"name":"wallet","req":false,"short":"Filter by wallet type.","type":"`$STRING`","index$":24}],"name":"merchant_portal_services_api","op":{"create":{"input":"data","name":"create","points":[{"active":true,"args":{},"contract":{"id":"POST /public/transactionHistoryCsv","json":"{\"operationId\":\"transactionHistoryCsv\",\"parameters\":[],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"3DSecure\":{\"type\":\"string\"},\"authorizationCode\":{\"type\":\"string\"},\"cardBrand\":{\"type\":\"string\"},\"clearingAmountFrom\":{\"type\":\"string\"},\"clearingAmountTo\":{\"type\":\"string\"},\"clearingCurrency\":{\"type\":\"string\"},\"clearingStatus\":{\"type\":\"string\"},\"corporateUUID\":{\"type\":\"string\"},\"orderByTransactionDate\":{\"pattern\":\"asc|desc\",\"type\":\"string\"},\"pagination\":{\"properties\":{\"page\":{\"format\":\"int32\",\"type\":\"integer\"},\"size\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"},\"receiptNumber\":{\"type\":\"string\"},\"referencedTransactionId\":{\"type\":\"string\"},\"retrievalReferenceNumber\":{\"type\":\"string\"},\"sourceId\":{\"format\":\"int32\",\"type\":\"integer\"},\"tecsengineResponseCodeFrom\":{\"type\":\"string\"},\"tecsengineResponseCodeTo\":{\"type\":\"string\"},\"terminalId\":{\"format\":\"int32\",\"type\":\"integer\"},\"traceNumber\":{\"type\":\"string\"},\"transactionAmountFrom\":{\"type\":\"string\"},\"transactionAmountTo\":{\"type\":\"string\"},\"transactionDateFrom\":{\"format\":\"date-time\",\"type\":\"string\"},\"transactionDateTo\":{\"format\":\"date-time\",\"type\":\"string\"},\"transactionId\":{\"type\":\"string\"},\"transactionType\":{\"type\":\"string\"},\"wallet\":{\"description\":\"Filter by wallet type. Allowed values: APAY, GPAY, GPAY3D\",\"enum\":[\"APAY\",\"GPAY\",\"GPAY3D\"],\"pattern\":\"APAY|GPAY|GPAY3D\",\"type\":\"string\"}},\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"text/plain\":{}},\"description\":\"Successful operation\"},\"400\":{\"content\":{\"application/json\":{\"schema\":{\"type\":\"string\"}}},\"description\":\"\\n* Invalid combination of transactionId and referencedTransactionId parameters\\n* ReferencedTransactionId is set and TerminalId not set\\n* ReferencedTransactionId not set and TransactionDateFrom not set\\n* ReferencedTransactionId not set and TransactionDateTo parameters not set\\n* Mandator not found\\n* Invalid TerminalId\\n\"},\"401\":{\"content\":{\"application/json\":{\"schema\":{\"type\":\"string\"}}},\"description\":\"\\nUnauthorized - Authentication failed:<br>\\n* MandatorId does not march\\n* Inactive user\\n\"},\"403\":{\"content\":{\"application/json\":{\"schema\":{\"type\":\"string\"}}},\"description\":\"Forbidden - Missing role: MP_CORPORATE or BO_TE_TRANSACTION_HISTORY\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"type\":\"string\"}}},\"description\":\"Internal server error\"}},\"security\":[{\"bearer-key\":[]}],\"securitySchemes\":{\"basic-key\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-key\":{\"bearerFormat\":\"JWT\",\"scheme\":\"bearer\",\"type\":\"http\"},\"tecsweb-key\":{\"description\":\"TecsWeb token\",\"in\":\"header\",\"name\":\"TecsWebToken\",\"type\":\"apiKey\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/public/transactionHistoryCsv","segments":[{"lit":"public"},{"lit":"transactionHistoryCsv"}],"select":{},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"merchant_portal_services_api","name__orig":"merchant_portal_services_api","Name":"MerchantPortalServicesApi","name_":"merchant_portal_services_api","name-":"merchant-portal-services-api","NAME":"MERCHANT_PORTAL_SERVICES_API","index$":19}, {"active":true,"entity":"merchant_portal_services_api","key$":"BasicMerchantPortalServicesApiFlow","kind":"basic","name":"BasicMerchantPortalServicesApiFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"merchant_portal_services_api_ref01"},"match":{},"op":"create","spec":[],"valid":[],"index$":0}]}, 'MerchantPortalServicesApi')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const merchant_portal_services_api_ref01_ent = client.MerchantPortalServicesApi()
    let merchant_portal_services_api_ref01_data = setup.data.new.merchant_portal_services_api['merchant_portal_services_api_ref01']

    merchant_portal_services_api_ref01_data = (await merchant_portal_services_api_ref01_ent.create(merchant_portal_services_api_ref01_data)).data()
    assert(null != merchant_portal_services_api_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/merchant_portal_services_api/MerchantPortalServicesApiTestData.json')

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
    ['merchant_portal_services_api01','merchant_portal_services_api02','merchant_portal_services_api03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MERCHANT_PORTAL_SERVICES_API_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MERCHANT_PORTAL_SERVICES_API_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MERCHANT_PORTAL_SERVICES_API_ENTID']
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
  
