

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


loadEnvLocal(__dirname + '/../../../.env.local')


describe('TransactionHistoryEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.TransactionHistory()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'transaction_history.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"3DSecure":{"a":true,"h":"3 D Secure","n":"3DSecure","r":false,"t":"`$STRING`","key$":"3DSecure","index$":0},"authorizationCode":{"a":true,"h":"Authorization Code","n":"authorizationCode","r":false,"t":"`$STRING`","key$":"authorizationCode","index$":1},"cardBrand":{"a":true,"h":"Card Brand","n":"cardBrand","r":false,"t":"`$STRING`","key$":"cardBrand","index$":2},"clearingAmountFrom":{"a":true,"h":"Clearing Amount From","n":"clearingAmountFrom","r":false,"t":"`$STRING`","key$":"clearingAmountFrom","index$":3},"clearingAmountTo":{"a":true,"h":"Clearing Amount To","n":"clearingAmountTo","r":false,"t":"`$STRING`","key$":"clearingAmountTo","index$":4},"clearingCurrency":{"a":true,"h":"Clearing Currency","n":"clearingCurrency","r":false,"t":"`$STRING`","key$":"clearingCurrency","index$":5},"clearingStatus":{"a":true,"h":"Clearing Status","n":"clearingStatus","r":false,"t":"`$STRING`","key$":"clearingStatus","index$":6},"corporateUUID":{"a":true,"h":"Corporate Uuid","n":"corporateUUID","r":false,"t":"`$STRING`","key$":"corporateUUID","index$":7},"orderByTransactionDate":{"a":true,"h":"Order By Transaction Date","n":"orderByTransactionDate","r":false,"t":"`$STRING`","key$":"orderByTransactionDate","index$":8},"pagination":{"a":true,"h":"Pagination","n":"pagination","r":false,"t":"`$OBJECT`","key$":"pagination","index$":9},"paymentTokenPublicId":{"a":true,"h":"Payment Token Public Id","n":"paymentTokenPublicId","r":false,"t":"`$STRING`","key$":"paymentTokenPublicId","index$":10},"receiptNumber":{"a":true,"h":"Receipt Number","n":"receiptNumber","r":false,"t":"`$STRING`","key$":"receiptNumber","index$":11},"referencedTransactionId":{"a":true,"h":"Referenced Transaction Id","n":"referencedTransactionId","r":false,"t":"`$STRING`","key$":"referencedTransactionId","index$":12},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":13},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":14},"retrievalReferenceNumber":{"a":true,"h":"Retrieval Reference Number","n":"retrievalReferenceNumber","r":false,"t":"`$STRING`","key$":"retrievalReferenceNumber","index$":15},"sourceId":{"a":true,"fo":"int32","h":"Source Id","n":"sourceId","r":false,"t":"`$INTEGER`","key$":"sourceId","index$":16},"tecsengineResponseCodeFrom":{"a":true,"h":"Tecsengine Response Code From","n":"tecsengineResponseCodeFrom","r":false,"t":"`$STRING`","key$":"tecsengineResponseCodeFrom","index$":17},"tecsengineResponseCodeTo":{"a":true,"h":"Tecsengine Response Code To","n":"tecsengineResponseCodeTo","r":false,"t":"`$STRING`","key$":"tecsengineResponseCodeTo","index$":18},"terminalId":{"a":true,"fo":"int32","h":"Terminal Id","n":"terminalId","r":false,"t":"`$INTEGER`","key$":"terminalId","index$":19},"traceNumber":{"a":true,"h":"Trace Number","n":"traceNumber","r":false,"t":"`$STRING`","key$":"traceNumber","index$":20},"transactionAmountFrom":{"a":true,"h":"Transaction Amount From","n":"transactionAmountFrom","r":false,"t":"`$STRING`","key$":"transactionAmountFrom","index$":21},"transactionAmountTo":{"a":true,"h":"Transaction Amount To","n":"transactionAmountTo","r":false,"t":"`$STRING`","key$":"transactionAmountTo","index$":22},"transactionDateFrom":{"a":true,"fo":"date-time","h":"Transaction Date From","n":"transactionDateFrom","r":false,"t":"`$STRING`","key$":"transactionDateFrom","index$":23},"transactionDateTo":{"a":true,"fo":"date-time","h":"Transaction Date To","n":"transactionDateTo","r":false,"t":"`$STRING`","key$":"transactionDateTo","index$":24},"transactionHistories":{"a":true,"h":"Transaction Histories","n":"transactionHistories","r":false,"t":"`$ARRAY`","key$":"transactionHistories","index$":25},"transactionId":{"a":true,"h":"Transaction Id","n":"transactionId","r":false,"t":"`$STRING`","key$":"transactionId","index$":26},"transactionType":{"a":true,"h":"Transaction Type","n":"transactionType","r":false,"t":"`$STRING`","key$":"transactionType","index$":27},"wallet":{"a":true,"h":"Wallet","n":"wallet","r":false,"sh":"Filter by wallet type.","t":"`$STRING`","key$":"wallet","index$":28}},"name":"transaction_history","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/mcom/transactionHistory","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/mcom/transactionHistory","q":{},"r":{},"s":[{"lit":"public"},{"lit":"mcom"},{"lit":"transactionHistory"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0},{"a":true,"co":{"id":"POST /public/transactionHistory","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/transactionHistory","q":{},"r":{},"s":[{"lit":"public"},{"lit":"transactionHistory"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"transaction_history","name__orig":"transaction_history","Name":"TransactionHistory","name_":"transaction_history","name-":"transaction-history","NAME":"TRANSACTION_HISTORY","index$":34}, {"active":true,"entity":"transaction_history","key$":"BasicTransactionHistoryFlow","kind":"basic","name":"BasicTransactionHistoryFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"transaction_history_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'TransactionHistory', {"POST /public/mcom/transactionHistory":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"transactionId":{"type":"string","key$":"transactionId"},"referencedTransactionId":{"type":"string","key$":"referencedTransactionId"},"terminalId":{"type":"integer","format":"int32","key$":"terminalId"},"sourceId":{"type":"integer","format":"int32","key$":"sourceId"},"transactionType":{"type":"string","key$":"transactionType"},"transactionAmountFrom":{"type":"string","key$":"transactionAmountFrom"},"transactionAmountTo":{"type":"string","key$":"transactionAmountTo"},"clearingAmountFrom":{"type":"string","key$":"clearingAmountFrom"},"clearingAmountTo":{"type":"string","key$":"clearingAmountTo"},"clearingCurrency":{"type":"string","key$":"clearingCurrency"},"transactionDateFrom":{"type":"string","format":"date-time","key$":"transactionDateFrom"},"transactionDateTo":{"type":"string","format":"date-time","key$":"transactionDateTo"},"authorizationCode":{"type":"string","key$":"authorizationCode"},"tecsengineResponseCodeFrom":{"type":"string","key$":"tecsengineResponseCodeFrom"},"tecsengineResponseCodeTo":{"type":"string","key$":"tecsengineResponseCodeTo"},"receiptNumber":{"type":"string","key$":"receiptNumber"},"retrievalReferenceNumber":{"type":"string","key$":"retrievalReferenceNumber"},"traceNumber":{"type":"string","key$":"traceNumber"},"clearingStatus":{"type":"string","key$":"clearingStatus"},"cardBrand":{"type":"string","key$":"cardBrand"},"pagination":{"type":"object","properties":{"page":{"type":"integer","format":"int32"},"size":{"type":"integer","format":"int32"}},"x-ref":"#/components/schemas/PaginationRequest","key$":"pagination"},"corporateUUID":{"type":"string","key$":"corporateUUID"},"paymentTokenPublicId":{"type":"string","key$":"paymentTokenPublicId"}},"x-ref":"#/components/schemas/TransactionHistoryMcomRequest","index$":1}}},"required":true},"parameters":[]},"POST /public/transactionHistory":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"transactionId":{"type":"string","key$":"transactionId"},"referencedTransactionId":{"type":"string","key$":"referencedTransactionId"},"terminalId":{"type":"integer","format":"int32","key$":"terminalId"},"sourceId":{"type":"integer","format":"int32","key$":"sourceId"},"transactionType":{"type":"string","key$":"transactionType"},"transactionAmountFrom":{"type":"string","key$":"transactionAmountFrom"},"transactionAmountTo":{"type":"string","key$":"transactionAmountTo"},"clearingAmountFrom":{"type":"string","key$":"clearingAmountFrom"},"clearingAmountTo":{"type":"string","key$":"clearingAmountTo"},"clearingCurrency":{"type":"string","key$":"clearingCurrency"},"transactionDateFrom":{"type":"string","format":"date-time","key$":"transactionDateFrom"},"transactionDateTo":{"type":"string","format":"date-time","key$":"transactionDateTo"},"authorizationCode":{"type":"string","key$":"authorizationCode"},"tecsengineResponseCodeFrom":{"type":"string","key$":"tecsengineResponseCodeFrom"},"tecsengineResponseCodeTo":{"type":"string","key$":"tecsengineResponseCodeTo"},"receiptNumber":{"type":"string","key$":"receiptNumber"},"retrievalReferenceNumber":{"type":"string","key$":"retrievalReferenceNumber"},"traceNumber":{"type":"string","key$":"traceNumber"},"clearingStatus":{"type":"string","key$":"clearingStatus"},"cardBrand":{"type":"string","key$":"cardBrand"},"pagination":{"type":"object","properties":{"page":{"type":"integer","format":"int32"},"size":{"type":"integer","format":"int32"}},"x-ref":"#/components/schemas/PaginationRequest","key$":"pagination"},"corporateUUID":{"type":"string","key$":"corporateUUID"},"orderByTransactionDate":{"type":"string","pattern":"asc|desc","key$":"orderByTransactionDate"},"wallet":{"type":"string","description":"Filter by wallet type. Allowed values: APAY, GPAY, GPAY3D","enum":["APAY","GPAY","GPAY3D"],"pattern":"APAY|GPAY|GPAY3D","key$":"wallet"},"3DSecure":{"type":"string","key$":"3DSecure"}},"x-ref":"#/components/schemas/TransactionHistoryRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const transaction_history_ref01_ent = client.TransactionHistory()
    let transaction_history_ref01_data = setup.data.new.transaction_history['transaction_history_ref01']

    transaction_history_ref01_data = (await transaction_history_ref01_ent.create(transaction_history_ref01_data)).data()
    assert(null != transaction_history_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/transaction_history/TransactionHistoryTestData.json')

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
    ['transaction_history01','transaction_history02','transaction_history03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTION_HISTORY_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTION_HISTORY_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_TRANSACTION_HISTORY_ENTID']
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
  
