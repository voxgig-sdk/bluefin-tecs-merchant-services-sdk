
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


describe('PreAuthTransactionCompletionEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.PreAuthTransactionCompletion()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"acquirerId":{"a":true,"h":"Acquirer Id","n":"acquirerId","r":false,"t":"`$STRING`","key$":"acquirerId","index$":0},"acquirerName":{"a":true,"h":"Acquirer Name","n":"acquirerName","r":false,"t":"`$STRING`","key$":"acquirerName","index$":1},"actualBonusPoints":{"a":true,"h":"Actual Bonus Points","n":"actualBonusPoints","r":false,"t":"`$STRING`","key$":"actualBonusPoints","index$":2},"amount":{"a":true,"fo":"int32","h":"Amount","n":"amount","op":{"create":{"req":true,"type":"`$INTEGER`"}},"r":false,"t":"`$INTEGER`","key$":"amount","index$":3},"authorizationCode":{"a":true,"h":"Authorization Code","n":"authorizationCode","r":false,"t":"`$STRING`","key$":"authorizationCode","index$":4},"balanceAmount":{"a":true,"h":"Balance Amount","n":"balanceAmount","r":false,"t":"`$STRING`","key$":"balanceAmount","index$":5},"cardBrand":{"a":true,"h":"Card Brand","n":"cardBrand","r":false,"t":"`$STRING`","key$":"cardBrand","index$":6},"cardNumber":{"a":true,"h":"Card Number","n":"cardNumber","r":false,"t":"`$STRING`","key$":"cardNumber","index$":7},"cardNumberReference":{"a":true,"h":"Card Number Reference","n":"cardNumberReference","r":true,"t":"`$STRING`","key$":"cardNumberReference","index$":8},"clientId":{"a":true,"fo":"int32","h":"Client Id","n":"clientId","r":true,"t":"`$INTEGER`","key$":"clientId","index$":9},"currency":{"a":true,"h":"Currency","n":"currency","r":true,"t":"`$STRING`","key$":"currency","index$":10},"cvc":{"a":true,"h":"Cvc","n":"cvc","r":false,"t":"`$STRING`","key$":"cvc","index$":11},"ecData":{"a":true,"h":"Ec Data","n":"ecData","r":false,"t":"`$STRING`","key$":"ecData","index$":12},"ecrData":{"a":true,"h":"Ecr Data","n":"ecrData","r":false,"t":"`$STRING`","key$":"ecrData","index$":13},"emvData":{"a":true,"h":"Emv Data","n":"emvData","r":false,"t":"`$STRING`","key$":"emvData","index$":14},"exchangeFee":{"a":true,"fo":"int64","h":"Exchange Fee","n":"exchangeFee","r":false,"t":"`$INTEGER`","key$":"exchangeFee","index$":15},"exchangeRate":{"a":true,"h":"Exchange Rate","n":"exchangeRate","r":false,"t":"`$STRING`","key$":"exchangeRate","index$":16},"languageCode":{"a":true,"h":"Language Code","n":"languageCode","r":false,"t":"`$STRING`","key$":"languageCode","index$":17},"merchantAddress":{"a":true,"h":"Merchant Address","n":"merchantAddress","r":false,"t":"`$STRING`","key$":"merchantAddress","index$":18},"merchantName":{"a":true,"h":"Merchant Name","n":"merchantName","r":false,"t":"`$STRING`","key$":"merchantName","index$":19},"merchantNumber":{"a":true,"h":"Merchant Number","n":"merchantNumber","r":false,"t":"`$STRING`","key$":"merchantNumber","index$":20},"messageType":{"a":true,"h":"Message Type","n":"messageType","r":false,"t":"`$STRING`","key$":"messageType","index$":21},"originalTraceNumber":{"a":true,"fo":"int32","h":"Original Trace Number","n":"originalTraceNumber","r":false,"t":"`$INTEGER`","key$":"originalTraceNumber","index$":22},"originalTransactionId":{"a":true,"h":"Original Transaction Id","n":"originalTransactionId","op":{"create":{"req":true,"type":"`$STRING`"}},"r":false,"t":"`$STRING`","key$":"originalTransactionId","index$":23},"password":{"a":true,"h":"Password","n":"password","r":false,"t":"`$STRING`","key$":"password","index$":24},"paymentReason":{"a":true,"h":"Payment Reason","n":"paymentReason","r":false,"t":"`$STRING`","key$":"paymentReason","index$":25},"receiptFooter":{"a":true,"h":"Receipt Footer","n":"receiptFooter","r":false,"t":"`$STRING`","key$":"receiptFooter","index$":26},"receiptHeader":{"a":true,"h":"Receipt Header","n":"receiptHeader","r":false,"t":"`$STRING`","key$":"receiptHeader","index$":27},"receiptLayout":{"a":true,"fo":"int32","h":"Receipt Layout","n":"receiptLayout","r":false,"t":"`$INTEGER`","key$":"receiptLayout","index$":28},"receiptNumber":{"a":true,"h":"Receipt Number","n":"receiptNumber","r":true,"t":"`$STRING`","key$":"receiptNumber","index$":29},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":30},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":31},"serialNumber":{"a":true,"h":"Serial Number","n":"serialNumber","r":false,"t":"`$STRING`","key$":"serialNumber","index$":32},"svc":{"a":true,"h":"Svc","n":"svc","r":false,"t":"`$STRING`","key$":"svc","index$":33},"terminalId":{"a":true,"fo":"int32","h":"Terminal Id","n":"terminalId","r":true,"t":"`$INTEGER`","key$":"terminalId","index$":34},"terminalLocation":{"a":true,"h":"Terminal Location","n":"terminalLocation","r":false,"t":"`$STRING`","key$":"terminalLocation","index$":35},"traceNumber":{"a":true,"fo":"int32","h":"Trace Number","n":"traceNumber","r":false,"t":"`$INTEGER`","key$":"traceNumber","index$":36},"transactionDate":{"a":true,"fo":"date-time","h":"Transaction Date","n":"transactionDate","op":{"create":{"req":true,"type":"`$STRING`"}},"r":false,"t":"`$STRING`","key$":"transactionDate","index$":37},"transactionId":{"a":true,"h":"Transaction Id","n":"transactionId","op":{"create":{"req":true,"type":"`$STRING`"}},"r":false,"t":"`$STRING`","key$":"transactionId","index$":38},"transactionType":{"a":true,"h":"Transaction Type","n":"transactionType","r":true,"t":"`$STRING`","key$":"transactionType","index$":39},"txType":{"a":true,"h":"Tx Type","n":"txType","r":false,"t":"`$STRING`","key$":"txType","index$":40},"userData":{"a":true,"h":"User Data","n":"userData","r":false,"t":"`$STRING`","key$":"userData","index$":41}},"name":"pre_auth_transaction_completion","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/paymentTransaction","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/paymentTransaction","q":{},"r":{},"s":[{"lit":"public"},{"lit":"paymentTransaction"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0},{"a":true,"co":{"id":"POST /public/preAuthCompletionTransaction","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/preAuthCompletionTransaction","q":{},"r":{},"s":[{"lit":"public"},{"lit":"preAuthCompletionTransaction"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":1}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"pre_auth_transaction_completion","name__orig":"pre_auth_transaction_completion","Name":"PreAuthTransactionCompletion","name_":"pre_auth_transaction_completion","name-":"pre-auth-transaction-completion","NAME":"PRE_AUTH_TRANSACTION_COMPLETION","index$":25}, {"active":true,"entity":"pre_auth_transaction_completion","key$":"BasicPreAuthTransactionCompletionFlow","kind":"basic","name":"BasicPreAuthTransactionCompletionFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"pre_auth_transaction_completion_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'PreAuthTransactionCompletion', {"POST /public/paymentTransaction":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"cardNumberReference":{"type":"string","minLength":1,"key$":"cardNumberReference"},"transactionType":{"type":"string","minLength":1,"pattern":"AUTHORIZATION|PRE-AUTH","key$":"transactionType"},"transactionId":{"type":"string","key$":"transactionId"},"transactionDate":{"type":"string","example":"20230509114131","pattern":"(\\d{4}(0[0-9]|1[0-2])([0-2][0-9]|3[0-1])([0-1][0-9]|2[0-4])(([0-5][0-9]){2}))","key$":"transactionDate"},"terminalId":{"type":"integer","format":"int32","key$":"terminalId"},"clientId":{"type":"integer","format":"int32","key$":"clientId"},"cvc":{"type":"string","key$":"cvc"},"amount":{"type":"integer","format":"int32","key$":"amount"},"currency":{"type":"string","minLength":1,"key$":"currency"},"receiptNumber":{"type":"string","minLength":1,"key$":"receiptNumber"},"paymentReason":{"type":"string","key$":"paymentReason"},"terminalLocation":{"type":"string","key$":"terminalLocation"},"password":{"type":"string","key$":"password"},"ecData":{"type":"string","key$":"ecData"},"ecrData":{"type":"string","key$":"ecrData"},"emvData":{"type":"string","key$":"emvData"},"languageCode":{"type":"string","key$":"languageCode"},"receiptLayout":{"type":"integer","format":"int32","maximum":99,"minimum":1,"key$":"receiptLayout"}},"required":["amount","cardNumberReference","clientId","currency","receiptNumber","terminalId","transactionDate","transactionType"],"x-ref":"#/components/schemas/PaymentTransactionRequest","index$":1}}},"required":true},"parameters":[]},"POST /public/preAuthCompletionTransaction":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"transactionId":{"type":"string","minLength":1,"key$":"transactionId"},"transactionDate":{"type":"string","example":"20230509114131","pattern":"(\\d{4}(0[0-9]|1[0-2])([0-2][0-9]|3[0-1])([0-1][0-9]|2[0-4])(([0-5][0-9]){2}))","key$":"transactionDate"},"terminalId":{"type":"integer","format":"int32","key$":"terminalId"},"clientId":{"type":"integer","format":"int32","key$":"clientId"},"originalTransactionId":{"type":"string","minLength":1,"key$":"originalTransactionId"},"cvc":{"type":"string","key$":"cvc"},"amount":{"type":"integer","format":"int32","key$":"amount"},"currency":{"type":"string","minLength":1,"key$":"currency"},"receiptNumber":{"type":"string","minLength":1,"key$":"receiptNumber"},"paymentReason":{"type":"string","key$":"paymentReason"},"terminalLocation":{"type":"string","key$":"terminalLocation"},"password":{"type":"string","key$":"password"},"ecData":{"type":"string","key$":"ecData"},"ecrData":{"type":"string","key$":"ecrData"},"emvData":{"type":"string","key$":"emvData"},"languageCode":{"type":"string","key$":"languageCode"},"receiptLayout":{"type":"integer","format":"int32","maximum":99,"minimum":1,"key$":"receiptLayout"}},"required":["amount","clientId","currency","originalTransactionId","receiptNumber","terminalId","transactionDate","transactionId"],"x-ref":"#/components/schemas/PreAuthTransactionCompletionRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const pre_auth_transaction_completion_ref01_ent = client.PreAuthTransactionCompletion()
    let pre_auth_transaction_completion_ref01_data = setup.data.new.pre_auth_transaction_completion['pre_auth_transaction_completion_ref01']

    pre_auth_transaction_completion_ref01_data = (await pre_auth_transaction_completion_ref01_ent.create(pre_auth_transaction_completion_ref01_data)).data()
    assert(null != pre_auth_transaction_completion_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/pre_auth_transaction_completion/PreAuthTransactionCompletionTestData.json')

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
    ['pre_auth_transaction_completion01','pre_auth_transaction_completion02','pre_auth_transaction_completion03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PRE_AUTH_TRANSACTION_COMPLETION_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PRE_AUTH_TRANSACTION_COMPLETION_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_PRE_AUTH_TRANSACTION_COMPLETION_ENTID']
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
  
