
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


describe('RefundTransactionEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.RefundTransaction()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"acquirerId","req":false,"type":"`$STRING`","index$":0},{"active":true,"name":"acquirerName","req":false,"type":"`$STRING`","index$":1},{"active":true,"name":"actualBonusPoints","req":false,"type":"`$STRING`","index$":2},{"active":true,"format":"int32","name":"amount","op":{"create":{"req":true,"type":"`$INTEGER`"}},"req":false,"type":"`$INTEGER`","index$":3},{"active":true,"name":"authorizationCode","req":false,"type":"`$STRING`","index$":4},{"active":true,"name":"balanceAmount","req":false,"type":"`$STRING`","index$":5},{"active":true,"name":"cardBrand","req":false,"type":"`$STRING`","index$":6},{"active":true,"name":"cardNumber","req":false,"type":"`$STRING`","index$":7},{"active":true,"format":"int32","name":"clientId","req":true,"type":"`$INTEGER`","index$":8},{"active":true,"name":"currency","req":true,"type":"`$STRING`","index$":9},{"active":true,"name":"cvc","req":false,"type":"`$STRING`","index$":10},{"active":true,"name":"ecData","req":false,"type":"`$STRING`","index$":11},{"active":true,"name":"ecrData","req":false,"type":"`$STRING`","index$":12},{"active":true,"name":"emvData","req":false,"type":"`$STRING`","index$":13},{"active":true,"format":"int64","name":"exchangeFee","req":false,"type":"`$INTEGER`","index$":14},{"active":true,"name":"exchangeRate","req":false,"type":"`$STRING`","index$":15},{"active":true,"name":"languageCode","req":false,"type":"`$STRING`","index$":16},{"active":true,"name":"merchantAddress","req":false,"type":"`$STRING`","index$":17},{"active":true,"name":"merchantName","req":false,"type":"`$STRING`","index$":18},{"active":true,"name":"merchantNumber","req":false,"type":"`$STRING`","index$":19},{"active":true,"name":"messageType","req":false,"type":"`$STRING`","index$":20},{"active":true,"format":"int32","name":"originalTraceNumber","req":false,"type":"`$INTEGER`","index$":21},{"active":true,"name":"originalTransactionId","op":{"create":{"req":true,"type":"`$STRING`"}},"req":false,"type":"`$STRING`","index$":22},{"active":true,"name":"password","req":false,"type":"`$STRING`","index$":23},{"active":true,"name":"paymentReason","req":false,"type":"`$STRING`","index$":24},{"active":true,"name":"receiptFooter","req":false,"type":"`$STRING`","index$":25},{"active":true,"name":"receiptHeader","req":false,"type":"`$STRING`","index$":26},{"active":true,"format":"int32","name":"receiptLayout","req":false,"type":"`$INTEGER`","index$":27},{"active":true,"name":"receiptNumber","req":true,"type":"`$STRING`","index$":28},{"active":true,"format":"int32","name":"responseCode","req":false,"type":"`$INTEGER`","index$":29},{"active":true,"name":"responseMessage","req":false,"type":"`$STRING`","index$":30},{"active":true,"name":"serialNumber","req":false,"type":"`$STRING`","index$":31},{"active":true,"name":"svc","req":false,"type":"`$STRING`","index$":32},{"active":true,"format":"int32","name":"terminalId","req":true,"type":"`$INTEGER`","index$":33},{"active":true,"name":"terminalLocation","req":false,"type":"`$STRING`","index$":34},{"active":true,"format":"int32","name":"traceNumber","req":false,"type":"`$INTEGER`","index$":35},{"active":true,"format":"date-time","name":"transactionDate","op":{"create":{"req":true,"type":"`$STRING`"}},"req":false,"type":"`$STRING`","index$":36},{"active":true,"name":"transactionId","op":{"create":{"req":true,"type":"`$STRING`"}},"req":false,"type":"`$STRING`","index$":37},{"active":true,"name":"txType","req":false,"type":"`$STRING`","index$":38},{"active":true,"name":"userData","req":false,"type":"`$STRING`","index$":39}],"name":"refund_transaction","op":{"create":{"input":"data","name":"create","points":[{"active":true,"args":{},"contract":{"id":"POST /public/refundTransaction","json":"{\"operationId\":\"refundTransaction\",\"parameters\":[],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"amount\":{\"format\":\"int32\",\"type\":\"integer\"},\"clientId\":{\"format\":\"int32\",\"type\":\"integer\"},\"currency\":{\"minLength\":1,\"type\":\"string\"},\"cvc\":{\"type\":\"string\"},\"ecData\":{\"type\":\"string\"},\"ecrData\":{\"type\":\"string\"},\"emvData\":{\"type\":\"string\"},\"languageCode\":{\"type\":\"string\"},\"originalTransactionId\":{\"minLength\":1,\"type\":\"string\"},\"password\":{\"type\":\"string\"},\"paymentReason\":{\"type\":\"string\"},\"receiptLayout\":{\"format\":\"int32\",\"maximum\":99,\"minimum\":1,\"type\":\"integer\"},\"receiptNumber\":{\"minLength\":1,\"type\":\"string\"},\"terminalId\":{\"format\":\"int32\",\"type\":\"integer\"},\"terminalLocation\":{\"type\":\"string\"},\"transactionDate\":{\"example\":\"20230509114131\",\"pattern\":\"(\\\\d{4}(0[0-9]|1[0-2])([0-2][0-9]|3[0-1])([0-1][0-9]|2[0-4])(([0-5][0-9]){2}))\",\"type\":\"string\"},\"transactionId\":{\"minLength\":1,\"type\":\"string\"}},\"required\":[\"amount\",\"clientId\",\"currency\",\"originalTransactionId\",\"receiptNumber\",\"terminalId\",\"transactionDate\",\"transactionId\"],\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"acquirerId\":{\"type\":\"string\"},\"acquirerName\":{\"type\":\"string\"},\"actualBonusPoints\":{\"type\":\"string\"},\"amount\":{\"format\":\"int32\",\"type\":\"integer\"},\"authorizationCode\":{\"type\":\"string\"},\"balanceAmount\":{\"type\":\"string\"},\"cardBrand\":{\"type\":\"string\"},\"cardNumber\":{\"type\":\"string\"},\"ecrData\":{\"type\":\"string\"},\"emvData\":{\"type\":\"string\"},\"exchangeFee\":{\"format\":\"int64\",\"type\":\"integer\"},\"exchangeRate\":{\"type\":\"string\"},\"merchantAddress\":{\"type\":\"string\"},\"merchantName\":{\"type\":\"string\"},\"merchantNumber\":{\"type\":\"string\"},\"messageType\":{\"type\":\"string\"},\"originalTraceNumber\":{\"format\":\"int32\",\"type\":\"integer\"},\"originalTransactionId\":{\"type\":\"string\"},\"receiptFooter\":{\"type\":\"string\"},\"receiptHeader\":{\"type\":\"string\"},\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"},\"serialNumber\":{\"type\":\"string\"},\"svc\":{\"type\":\"string\"},\"traceNumber\":{\"format\":\"int32\",\"type\":\"integer\"},\"transactionDate\":{\"format\":\"date-time\",\"type\":\"string\"},\"transactionId\":{\"type\":\"string\"},\"txType\":{\"type\":\"string\"},\"userData\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Successful operation\"},\"400\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\n* Transaction not found\\n* Mandator not found\\n\"},\"401\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Unauthorized - Authentication failed, e.g. MandatorId does not march\"},\"403\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Forbidden - Missing role: BO_TRANSACTIONMANAGEMENT_REFUND\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Internal server error\"}},\"security\":[{\"bearer-key\":[]},{\"basic-key\":[]},{\"tecsweb-key\":[]}],\"securitySchemes\":{\"basic-key\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-key\":{\"bearerFormat\":\"JWT\",\"scheme\":\"bearer\",\"type\":\"http\"},\"tecsweb-key\":{\"description\":\"TecsWeb token\",\"in\":\"header\",\"name\":\"TecsWebToken\",\"type\":\"apiKey\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/public/refundTransaction","segments":[{"lit":"public"},{"lit":"refundTransaction"}],"select":{},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"refund_transaction","name__orig":"refund_transaction","Name":"RefundTransaction","name_":"refund_transaction","name-":"refund-transaction","NAME":"REFUND_TRANSACTION","index$":25}, {"active":true,"entity":"refund_transaction","key$":"BasicRefundTransactionFlow","kind":"basic","name":"BasicRefundTransactionFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"refund_transaction_ref01"},"match":{},"op":"create","spec":[],"valid":[],"index$":0}]}, 'RefundTransaction')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const refund_transaction_ref01_ent = client.RefundTransaction()
    let refund_transaction_ref01_data = setup.data.new.refund_transaction['refund_transaction_ref01']

    refund_transaction_ref01_data = (await refund_transaction_ref01_ent.create(refund_transaction_ref01_data)).data()
    assert(null != refund_transaction_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/refund_transaction/RefundTransactionTestData.json')

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
    ['refund_transaction01','refund_transaction02','refund_transaction03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_REFUND_TRANSACTION_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_REFUND_TRANSACTION_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_REFUND_TRANSACTION_ENTID']
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
  
