
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

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"acquirerName":{"a":true,"h":"Acquirer Name","n":"acquirerName","r":false,"t":"`$STRING`","key$":"acquirerName","index$":0},"acquirerTerminalId":{"a":true,"h":"Acquirer Terminal Id","n":"acquirerTerminalId","r":false,"t":"`$STRING`","key$":"acquirerTerminalId","index$":1},"amount":{"a":true,"fo":"int32","h":"Amount","n":"amount","r":false,"t":"`$INTEGER`","key$":"amount","index$":2},"applicationCryptogram":{"a":true,"h":"Application Cryptogram","n":"applicationCryptogram","r":false,"t":"`$STRING`","key$":"applicationCryptogram","index$":3},"authorizationCode":{"a":true,"h":"Authorization Code","n":"authorizationCode","r":false,"sh":"Authorization code returned by the acquirer; null when not available","t":["`$ONE`",["`$STRING`","`$NULL`"]],"key$":"authorizationCode","index$":4},"authorizationDate":{"a":true,"fo":"date-time","h":"Authorization Date","n":"authorizationDate","r":false,"t":"`$STRING`","key$":"authorizationDate","index$":5},"cardBrand":{"a":true,"h":"Card Brand","n":"cardBrand","r":false,"t":"`$STRING`","key$":"cardBrand","index$":6},"cardEntry":{"a":true,"h":"Card Entry","n":"cardEntry","r":false,"t":"`$STRING`","key$":"cardEntry","index$":7},"cardExpiration":{"a":true,"h":"Card Expiration","n":"cardExpiration","r":false,"t":"`$STRING`","key$":"cardExpiration","index$":8},"cardNumber":{"a":true,"h":"Card Number","n":"cardNumber","r":false,"t":"`$STRING`","key$":"cardNumber","index$":9},"clearingAmount":{"a":true,"fo":"int32","h":"Clearing Amount","n":"clearingAmount","r":false,"t":"`$INTEGER`","key$":"clearingAmount","index$":10},"clearingBatchId":{"a":true,"h":"Clearing Batch Id","n":"clearingBatchId","r":false,"t":"`$STRING`","key$":"clearingBatchId","index$":11},"clearingCurrency":{"a":true,"h":"Clearing Currency","n":"clearingCurrency","r":false,"t":"`$STRING`","key$":"clearingCurrency","index$":12},"clearingDate":{"a":true,"fo":"date-time","h":"Clearing Date","n":"clearingDate","r":false,"t":"`$STRING`","key$":"clearingDate","index$":13},"clearingProcessedDate":{"a":true,"fo":"date-time","h":"Clearing Processed Date","n":"clearingProcessedDate","r":false,"t":"`$STRING`","key$":"clearingProcessedDate","index$":14},"clearingStatus":{"a":true,"h":"Clearing Status","n":"clearingStatus","r":false,"t":"`$STRING`","key$":"clearingStatus","index$":15},"clientId":{"a":true,"fo":"int32","h":"Client Id","n":"clientId","r":false,"t":"`$INTEGER`","key$":"clientId","index$":16},"currency":{"a":true,"h":"Currency","n":"currency","r":false,"t":"`$STRING`","key$":"currency","index$":17},"cvm":{"a":true,"h":"Cvm","n":"cvm","r":false,"t":"`$STRING`","key$":"cvm","index$":18},"ecrData":{"a":true,"h":"Ecr Data","n":"ecrData","r":false,"t":"`$STRING`","key$":"ecrData","index$":19},"emvApplicationId":{"a":true,"h":"Emv Application Id","n":"emvApplicationId","r":false,"t":"`$STRING`","key$":"emvApplicationId","index$":20},"emvApplicationLabel":{"a":true,"h":"Emv Application Label","n":"emvApplicationLabel","r":false,"t":"`$STRING`","key$":"emvApplicationLabel","index$":21},"merchantName":{"a":true,"h":"Merchant Name","n":"merchantName","r":false,"t":"`$STRING`","key$":"merchantName","index$":22},"merchantNumber":{"a":true,"h":"Merchant Number","n":"merchantNumber","r":false,"t":"`$STRING`","key$":"merchantNumber","index$":23},"originalClientId":{"a":true,"h":"Original Client Id","n":"originalClientId","r":false,"t":"`$STRING`","key$":"originalClientId","index$":24},"originalTerminalId":{"a":true,"fo":"int32","h":"Original Terminal Id","n":"originalTerminalId","r":false,"t":"`$INTEGER`","key$":"originalTerminalId","index$":25},"originalTransactionId":{"a":true,"h":"Original Transaction Id","n":"originalTransactionId","r":false,"t":"`$STRING`","key$":"originalTransactionId","index$":26},"paymentReason":{"a":true,"h":"Payment Reason","n":"paymentReason","r":false,"t":"`$STRING`","key$":"paymentReason","index$":27},"receiptNumber":{"a":true,"h":"Receipt Number","n":"receiptNumber","r":false,"t":"`$STRING`","key$":"receiptNumber","index$":28},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":29},"responseCodeFromAS":{"a":true,"h":"Response Code From As","n":"responseCodeFromAS","r":false,"t":"`$STRING`","key$":"responseCodeFromAS","index$":30},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":31},"retrievalReferenceNumber":{"a":true,"h":"Retrieval Reference Number","n":"retrievalReferenceNumber","r":false,"t":"`$STRING`","key$":"retrievalReferenceNumber","index$":32},"serviceCode":{"a":true,"h":"Service Code","n":"serviceCode","r":false,"t":"`$STRING`","key$":"serviceCode","index$":33},"settlementStatus":{"a":true,"h":"Settlement Status","n":"settlementStatus","r":false,"t":"`$STRING`","key$":"settlementStatus","index$":34},"sourceId":{"a":true,"fo":"int32","h":"Source Id","n":"sourceId","r":false,"t":"`$INTEGER`","key$":"sourceId","index$":35},"tecsengineResponseCode":{"a":true,"fo":"int32","h":"Tecsengine Response Code","n":"tecsengineResponseCode","r":false,"t":"`$INTEGER`","key$":"tecsengineResponseCode","index$":36},"tecsengineResponseText":{"a":true,"h":"Tecsengine Response Text","n":"tecsengineResponseText","r":false,"t":"`$STRING`","key$":"tecsengineResponseText","index$":37},"terminalEndOfDayDate":{"a":true,"fo":"date-time","h":"Terminal End Of Day Date","n":"terminalEndOfDayDate","r":false,"t":"`$STRING`","key$":"terminalEndOfDayDate","index$":38},"terminalId":{"a":true,"fo":"int32","h":"Terminal Id","n":"terminalId","r":false,"t":"`$INTEGER`","key$":"terminalId","index$":39},"terminalLocation":{"a":true,"h":"Terminal Location","n":"terminalLocation","r":false,"t":"`$STRING`","key$":"terminalLocation","index$":40},"tipAmount":{"a":true,"fo":"int32","h":"Tip Amount","n":"tipAmount","r":false,"t":"`$INTEGER`","key$":"tipAmount","index$":41},"traceNumber":{"a":true,"fo":"int32","h":"Trace Number","n":"traceNumber","r":false,"t":"`$INTEGER`","key$":"traceNumber","index$":42},"transactionClearingDate":{"a":true,"fo":"date-time","h":"Transaction Clearing Date","n":"transactionClearingDate","r":false,"t":"`$STRING`","key$":"transactionClearingDate","index$":43},"transactionDate":{"a":true,"fo":"date-time","h":"Transaction Date","n":"transactionDate","r":false,"t":"`$STRING`","key$":"transactionDate","index$":44},"transactionId":{"a":true,"h":"Transaction Id","n":"transactionId","r":false,"t":"`$STRING`","key$":"transactionId","index$":45},"transactionSeqNumber":{"a":true,"fo":"int64","h":"Transaction Seq Number","n":"transactionSeqNumber","r":false,"t":"`$INTEGER`","key$":"transactionSeqNumber","index$":46},"transactionServerDate":{"a":true,"fo":"date-time","h":"Transaction Server Date","n":"transactionServerDate","r":false,"t":"`$STRING`","key$":"transactionServerDate","index$":47},"transactionSource":{"a":true,"h":"Transaction Source","n":"transactionSource","r":false,"t":"`$STRING`","key$":"transactionSource","index$":48},"transactionType":{"a":true,"h":"Transaction Type","n":"transactionType","r":false,"t":"`$STRING`","key$":"transactionType","index$":49}},"name":"status_transaction","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/statusTransaction","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/statusTransaction","q":{},"r":{},"s":[{"lit":"public"},{"lit":"statusTransaction"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"status_transaction","name__orig":"status_transaction","Name":"StatusTransaction","name_":"status_transaction","name-":"status-transaction","NAME":"STATUS_TRANSACTION","index$":31}, {"active":true,"entity":"status_transaction","key$":"BasicStatusTransactionFlow","kind":"basic","name":"BasicStatusTransactionFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"status_transaction_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'StatusTransaction', {"POST /public/statusTransaction":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"transactionSeqNumber":{"type":"integer","format":"int32","key$":"transactionSeqNumber"},"transactionId":{"type":"string","key$":"transactionId"},"terminalId":{"type":"integer","format":"int32","key$":"terminalId"},"sourceId":{"type":"integer","format":"int32","key$":"sourceId"},"clientId":{"type":"integer","format":"int32","key$":"clientId"}},"x-ref":"#/components/schemas/StatusTransactionRequest","index$":1}}},"required":true},"parameters":[]}})
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



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

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
  
