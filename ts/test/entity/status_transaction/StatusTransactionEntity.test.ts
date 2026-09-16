

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


describe('StatusTransactionEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.StatusTransaction()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'status_transaction.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"acquirerName","req":false,"type":"`$STRING`","index$":0},{"active":true,"name":"acquirerTerminalId","req":false,"type":"`$STRING`","index$":1},{"active":true,"format":"int32","name":"amount","req":false,"type":"`$INTEGER`","index$":2},{"active":true,"name":"applicationCryptogram","req":false,"type":"`$STRING`","index$":3},{"active":true,"name":"authorizationCode","req":false,"short":"Authorization code returned by the acquirer; null when not available","type":["`$ONE`",["`$STRING`","`$NULL`"]],"index$":4},{"active":true,"format":"date-time","name":"authorizationDate","req":false,"type":"`$STRING`","index$":5},{"active":true,"name":"cardBrand","req":false,"type":"`$STRING`","index$":6},{"active":true,"name":"cardEntry","req":false,"type":"`$STRING`","index$":7},{"active":true,"name":"cardExpiration","req":false,"type":"`$STRING`","index$":8},{"active":true,"name":"cardNumber","req":false,"type":"`$STRING`","index$":9},{"active":true,"format":"int32","name":"clearingAmount","req":false,"type":"`$INTEGER`","index$":10},{"active":true,"name":"clearingBatchId","req":false,"type":"`$STRING`","index$":11},{"active":true,"name":"clearingCurrency","req":false,"type":"`$STRING`","index$":12},{"active":true,"format":"date-time","name":"clearingDate","req":false,"type":"`$STRING`","index$":13},{"active":true,"format":"date-time","name":"clearingProcessedDate","req":false,"type":"`$STRING`","index$":14},{"active":true,"name":"clearingStatus","req":false,"type":"`$STRING`","index$":15},{"active":true,"format":"int32","name":"clientId","req":false,"type":"`$INTEGER`","index$":16},{"active":true,"name":"currency","req":false,"type":"`$STRING`","index$":17},{"active":true,"name":"cvm","req":false,"type":"`$STRING`","index$":18},{"active":true,"name":"ecrData","req":false,"type":"`$STRING`","index$":19},{"active":true,"name":"emvApplicationId","req":false,"type":"`$STRING`","index$":20},{"active":true,"name":"emvApplicationLabel","req":false,"type":"`$STRING`","index$":21},{"active":true,"name":"merchantName","req":false,"type":"`$STRING`","index$":22},{"active":true,"name":"merchantNumber","req":false,"type":"`$STRING`","index$":23},{"active":true,"name":"originalClientId","req":false,"type":"`$STRING`","index$":24},{"active":true,"format":"int32","name":"originalTerminalId","req":false,"type":"`$INTEGER`","index$":25},{"active":true,"name":"originalTransactionId","req":false,"type":"`$STRING`","index$":26},{"active":true,"name":"paymentReason","req":false,"type":"`$STRING`","index$":27},{"active":true,"name":"receiptNumber","req":false,"type":"`$STRING`","index$":28},{"active":true,"format":"int32","name":"responseCode","req":false,"type":"`$INTEGER`","index$":29},{"active":true,"name":"responseCodeFromAS","req":false,"type":"`$STRING`","index$":30},{"active":true,"name":"responseMessage","req":false,"type":"`$STRING`","index$":31},{"active":true,"name":"retrievalReferenceNumber","req":false,"type":"`$STRING`","index$":32},{"active":true,"name":"serviceCode","req":false,"type":"`$STRING`","index$":33},{"active":true,"name":"settlementStatus","req":false,"type":"`$STRING`","index$":34},{"active":true,"format":"int32","name":"sourceId","req":false,"type":"`$INTEGER`","index$":35},{"active":true,"format":"int32","name":"tecsengineResponseCode","req":false,"type":"`$INTEGER`","index$":36},{"active":true,"name":"tecsengineResponseText","req":false,"type":"`$STRING`","index$":37},{"active":true,"format":"date-time","name":"terminalEndOfDayDate","req":false,"type":"`$STRING`","index$":38},{"active":true,"format":"int32","name":"terminalId","req":false,"type":"`$INTEGER`","index$":39},{"active":true,"name":"terminalLocation","req":false,"type":"`$STRING`","index$":40},{"active":true,"format":"int32","name":"tipAmount","req":false,"type":"`$INTEGER`","index$":41},{"active":true,"format":"int32","name":"traceNumber","req":false,"type":"`$INTEGER`","index$":42},{"active":true,"format":"date-time","name":"transactionClearingDate","req":false,"type":"`$STRING`","index$":43},{"active":true,"format":"date-time","name":"transactionDate","req":false,"type":"`$STRING`","index$":44},{"active":true,"name":"transactionId","req":false,"type":"`$STRING`","index$":45},{"active":true,"format":"int64","name":"transactionSeqNumber","req":false,"type":"`$INTEGER`","index$":46},{"active":true,"format":"date-time","name":"transactionServerDate","req":false,"type":"`$STRING`","index$":47},{"active":true,"name":"transactionSource","req":false,"type":"`$STRING`","index$":48},{"active":true,"name":"transactionType","req":false,"type":"`$STRING`","index$":49}],"name":"status_transaction","op":{"create":{"input":"data","name":"create","points":[{"active":true,"args":{},"contract":{"id":"POST /public/statusTransaction","json":"{\"operationId\":\"statusTransaction\",\"parameters\":[],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"clientId\":{\"format\":\"int32\",\"type\":\"integer\"},\"sourceId\":{\"format\":\"int32\",\"type\":\"integer\"},\"terminalId\":{\"format\":\"int32\",\"type\":\"integer\"},\"transactionId\":{\"type\":\"string\"},\"transactionSeqNumber\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"acquirerName\":{\"type\":\"string\"},\"acquirerTerminalId\":{\"type\":\"string\"},\"amount\":{\"format\":\"int32\",\"type\":\"integer\"},\"applicationCryptogram\":{\"type\":\"string\"},\"authorizationCode\":{\"description\":\"Authorization code returned by the acquirer; null when not available\",\"type\":[\"string\",\"null\"]},\"authorizationDate\":{\"format\":\"date-time\",\"type\":\"string\"},\"cardBrand\":{\"type\":\"string\"},\"cardEntry\":{\"type\":\"string\"},\"cardExpiration\":{\"type\":\"string\"},\"cardNumber\":{\"type\":\"string\"},\"clearingAmount\":{\"format\":\"int32\",\"type\":\"integer\"},\"clearingBatchId\":{\"type\":\"string\"},\"clearingCurrency\":{\"type\":\"string\"},\"clearingDate\":{\"format\":\"date-time\",\"type\":\"string\"},\"clearingProcessedDate\":{\"format\":\"date-time\",\"type\":\"string\"},\"clearingStatus\":{\"type\":\"string\"},\"clientId\":{\"format\":\"int32\",\"type\":\"integer\"},\"currency\":{\"type\":\"string\"},\"cvm\":{\"type\":\"string\"},\"ecrData\":{\"type\":\"string\"},\"emvApplicationId\":{\"type\":\"string\"},\"emvApplicationLabel\":{\"type\":\"string\"},\"merchantName\":{\"type\":\"string\"},\"merchantNumber\":{\"type\":\"string\"},\"originalClientId\":{\"type\":\"string\"},\"originalTerminalId\":{\"format\":\"int32\",\"type\":\"integer\"},\"originalTransactionId\":{\"type\":\"string\"},\"paymentReason\":{\"type\":\"string\"},\"receiptNumber\":{\"type\":\"string\"},\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseCodeFromAS\":{\"type\":\"string\"},\"responseMessage\":{\"type\":\"string\"},\"retrievalReferenceNumber\":{\"type\":\"string\"},\"serviceCode\":{\"type\":\"string\"},\"settlementStatus\":{\"type\":\"string\"},\"tecsengineResponseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"tecsengineResponseText\":{\"type\":\"string\"},\"terminalEndOfDayDate\":{\"format\":\"date-time\",\"type\":\"string\"},\"terminalId\":{\"format\":\"int32\",\"type\":\"integer\"},\"terminalLocation\":{\"type\":\"string\"},\"tipAmount\":{\"format\":\"int32\",\"type\":\"integer\"},\"traceNumber\":{\"format\":\"int32\",\"type\":\"integer\"},\"transactionClearingDate\":{\"format\":\"date-time\",\"type\":\"string\"},\"transactionDate\":{\"format\":\"date-time\",\"type\":\"string\"},\"transactionId\":{\"type\":\"string\"},\"transactionSeqNumber\":{\"format\":\"int64\",\"type\":\"integer\"},\"transactionServerDate\":{\"format\":\"date-time\",\"type\":\"string\"},\"transactionSource\":{\"type\":\"string\"},\"transactionType\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Successful operation\"},\"400\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\n* Transaction not found\\n* Mandator not found\\n* MandatorConfig not found\\n              \"},\"401\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Unauthorized - Authentication failed: \\n* Authorization header was not provided\\n* MandatorId does not match\\n\"},\"403\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Forbidden - Missing role: BO_TE_TRANSACTION_HISTORY\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Internal server error\"}},\"security\":[{\"bearer-key\":[]},{\"basic-key\":[]},{\"tecsweb-key\":[]}],\"securitySchemes\":{\"basic-key\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-key\":{\"bearerFormat\":\"JWT\",\"scheme\":\"bearer\",\"type\":\"http\"},\"tecsweb-key\":{\"description\":\"TecsWeb token\",\"in\":\"header\",\"name\":\"TecsWebToken\",\"type\":\"apiKey\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/public/statusTransaction","segments":[{"lit":"public"},{"lit":"statusTransaction"}],"select":{},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"status_transaction","name__orig":"status_transaction","Name":"StatusTransaction","name_":"status_transaction","name-":"status-transaction","NAME":"STATUS_TRANSACTION","index$":29}, {"active":true,"entity":"status_transaction","key$":"BasicStatusTransactionFlow","kind":"basic","name":"BasicStatusTransactionFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"status_transaction_ref01"},"match":{},"op":"create","spec":[],"valid":[],"index$":0}]}, 'StatusTransaction')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const status_transaction_ref01_ent = client.StatusTransaction()
    let status_transaction_ref01_data = setup.data.new.status_transaction['status_transaction_ref01']

    status_transaction_ref01_data = (await status_transaction_ref01_ent.create(status_transaction_ref01_data)).data()
    assert(null != status_transaction_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/status_transaction/StatusTransactionTestData.json')

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
    ['status_transaction01','status_transaction02','status_transaction03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_STATUS_TRANSACTION_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_STATUS_TRANSACTION_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_STATUS_TRANSACTION_ENTID']
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
  
