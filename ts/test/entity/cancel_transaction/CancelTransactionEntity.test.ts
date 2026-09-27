

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


describe('CancelTransactionEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.CancelTransaction()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'cancel_transaction.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"acquirerId":{"a":true,"h":"Acquirer Id","n":"acquirerId","r":false,"t":"`$STRING`","key$":"acquirerId","index$":0},"acquirerName":{"a":true,"h":"Acquirer Name","n":"acquirerName","r":false,"t":"`$STRING`","key$":"acquirerName","index$":1},"actualBonusPoints":{"a":true,"h":"Actual Bonus Points","n":"actualBonusPoints","r":false,"t":"`$STRING`","key$":"actualBonusPoints","index$":2},"amount":{"a":true,"fo":"int32","h":"Amount","n":"amount","op":{"create":{"req":true,"type":"`$INTEGER`"}},"r":false,"t":"`$INTEGER`","key$":"amount","index$":3},"authorizationCode":{"a":true,"h":"Authorization Code","n":"authorizationCode","r":false,"t":"`$STRING`","key$":"authorizationCode","index$":4},"balanceAmount":{"a":true,"h":"Balance Amount","n":"balanceAmount","r":false,"t":"`$STRING`","key$":"balanceAmount","index$":5},"cardBrand":{"a":true,"h":"Card Brand","n":"cardBrand","r":false,"t":"`$STRING`","key$":"cardBrand","index$":6},"cardNumber":{"a":true,"h":"Card Number","n":"cardNumber","r":false,"t":"`$STRING`","key$":"cardNumber","index$":7},"clientId":{"a":true,"fo":"int32","h":"Client Id","n":"clientId","r":true,"t":"`$INTEGER`","key$":"clientId","index$":8},"currency":{"a":true,"h":"Currency","n":"currency","r":true,"t":"`$STRING`","key$":"currency","index$":9},"cvc":{"a":true,"h":"Cvc","n":"cvc","r":false,"t":"`$STRING`","key$":"cvc","index$":10},"ecData":{"a":true,"h":"Ec Data","n":"ecData","r":false,"t":"`$STRING`","key$":"ecData","index$":11},"ecrData":{"a":true,"h":"Ecr Data","n":"ecrData","r":false,"t":"`$STRING`","key$":"ecrData","index$":12},"emvData":{"a":true,"h":"Emv Data","n":"emvData","r":false,"t":"`$STRING`","key$":"emvData","index$":13},"exchangeFee":{"a":true,"fo":"int64","h":"Exchange Fee","n":"exchangeFee","r":false,"t":"`$INTEGER`","key$":"exchangeFee","index$":14},"exchangeRate":{"a":true,"h":"Exchange Rate","n":"exchangeRate","r":false,"t":"`$STRING`","key$":"exchangeRate","index$":15},"languageCode":{"a":true,"h":"Language Code","n":"languageCode","r":false,"t":"`$STRING`","key$":"languageCode","index$":16},"merchantAddress":{"a":true,"h":"Merchant Address","n":"merchantAddress","r":false,"t":"`$STRING`","key$":"merchantAddress","index$":17},"merchantName":{"a":true,"h":"Merchant Name","n":"merchantName","r":false,"t":"`$STRING`","key$":"merchantName","index$":18},"merchantNumber":{"a":true,"h":"Merchant Number","n":"merchantNumber","r":false,"t":"`$STRING`","key$":"merchantNumber","index$":19},"messageType":{"a":true,"h":"Message Type","n":"messageType","op":{"create":{"req":true,"type":"`$STRING`"}},"r":false,"t":"`$STRING`","key$":"messageType","index$":20},"originalTraceNumber":{"a":true,"fo":"int32","h":"Original Trace Number","n":"originalTraceNumber","r":false,"t":"`$INTEGER`","key$":"originalTraceNumber","index$":21},"originalTransactionId":{"a":true,"h":"Original Transaction Id","n":"originalTransactionId","op":{"create":{"req":true,"type":"`$STRING`"}},"r":false,"t":"`$STRING`","key$":"originalTransactionId","index$":22},"password":{"a":true,"h":"Password","n":"password","r":false,"t":"`$STRING`","key$":"password","index$":23},"paymentReason":{"a":true,"h":"Payment Reason","n":"paymentReason","r":false,"t":"`$STRING`","key$":"paymentReason","index$":24},"receiptFooter":{"a":true,"h":"Receipt Footer","n":"receiptFooter","r":false,"t":"`$STRING`","key$":"receiptFooter","index$":25},"receiptHeader":{"a":true,"h":"Receipt Header","n":"receiptHeader","r":false,"t":"`$STRING`","key$":"receiptHeader","index$":26},"receiptLayout":{"a":true,"fo":"int32","h":"Receipt Layout","n":"receiptLayout","r":false,"t":"`$INTEGER`","key$":"receiptLayout","index$":27},"receiptNumber":{"a":true,"h":"Receipt Number","n":"receiptNumber","r":true,"t":"`$STRING`","key$":"receiptNumber","index$":28},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":29},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":30},"serialNumber":{"a":true,"h":"Serial Number","n":"serialNumber","r":false,"t":"`$STRING`","key$":"serialNumber","index$":31},"svc":{"a":true,"h":"Svc","n":"svc","r":false,"t":"`$STRING`","key$":"svc","index$":32},"terminalId":{"a":true,"fo":"int32","h":"Terminal Id","n":"terminalId","r":true,"t":"`$INTEGER`","key$":"terminalId","index$":33},"terminalLocation":{"a":true,"h":"Terminal Location","n":"terminalLocation","r":false,"t":"`$STRING`","key$":"terminalLocation","index$":34},"traceNumber":{"a":true,"fo":"int32","h":"Trace Number","n":"traceNumber","r":false,"t":"`$INTEGER`","key$":"traceNumber","index$":35},"transactionDate":{"a":true,"fo":"date-time","h":"Transaction Date","n":"transactionDate","op":{"create":{"req":true,"type":"`$STRING`"}},"r":false,"t":"`$STRING`","key$":"transactionDate","index$":36},"transactionId":{"a":true,"h":"Transaction Id","n":"transactionId","op":{"create":{"req":true,"type":"`$STRING`"}},"r":false,"t":"`$STRING`","key$":"transactionId","index$":37},"txType":{"a":true,"h":"Tx Type","n":"txType","r":false,"t":"`$STRING`","key$":"txType","index$":38},"userData":{"a":true,"h":"User Data","n":"userData","r":false,"t":"`$STRING`","key$":"userData","index$":39}},"name":"cancel_transaction","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/cancelTransaction","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/cancelTransaction","q":{},"r":{},"s":[{"lit":"public"},{"lit":"cancelTransaction"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"cancel_transaction","name__orig":"cancel_transaction","Name":"CancelTransaction","name_":"cancel_transaction","name-":"cancel-transaction","NAME":"CANCEL_TRANSACTION","index$":0}, {"active":true,"entity":"cancel_transaction","key$":"BasicCancelTransactionFlow","kind":"basic","name":"BasicCancelTransactionFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"cancel_transaction_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'CancelTransaction', {"POST /public/cancelTransaction":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"transactionId":{"type":"string","minLength":1,"key$":"transactionId"},"messageType":{"type":"string","key$":"messageType"},"terminalId":{"type":"integer","format":"int32","key$":"terminalId"},"clientId":{"type":"integer","format":"int32","key$":"clientId"},"originalTransactionId":{"type":"string","minLength":1,"key$":"originalTransactionId"},"cvc":{"type":"string","key$":"cvc"},"amount":{"type":"integer","format":"int32","key$":"amount"},"currency":{"type":"string","minLength":1,"key$":"currency"},"receiptNumber":{"type":"string","minLength":1,"key$":"receiptNumber"},"paymentReason":{"type":"string","key$":"paymentReason"},"terminalLocation":{"type":"string","key$":"terminalLocation"},"password":{"type":"string","key$":"password"},"ecData":{"type":"string","key$":"ecData"},"ecrData":{"type":"string","key$":"ecrData"},"emvData":{"type":"string","key$":"emvData"},"languageCode":{"type":"string","key$":"languageCode"},"receiptLayout":{"type":"integer","format":"int32","key$":"receiptLayout"},"transactionDate":{"type":"string","example":"20230509114131","pattern":"(\\d{4}(0[0-9]|1[0-2])([0-2][0-9]|3[0-1])([0-1][0-9]|2[0-4])(([0-5][0-9]){2}))","key$":"transactionDate"}},"required":["amount","clientId","currency","messageType","originalTransactionId","receiptNumber","terminalId","transactionDate","transactionId"],"x-ref":"#/components/schemas/CancelTransactionRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const cancel_transaction_ref01_ent = client.CancelTransaction()
    let cancel_transaction_ref01_data = setup.data.new.cancel_transaction['cancel_transaction_ref01']

    cancel_transaction_ref01_data = (await cancel_transaction_ref01_ent.create(cancel_transaction_ref01_data)).data()
    assert(null != cancel_transaction_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/cancel_transaction/CancelTransactionTestData.json')

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
    ['cancel_transaction01','cancel_transaction02','cancel_transaction03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CANCEL_TRANSACTION_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CANCEL_TRANSACTION_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_CANCEL_TRANSACTION_ENTID']
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
  
