
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


describe('ReportDataEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.ReportData()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"cardBrandReportData","req":false,"type":"`$ARRAY`","index$":0},{"active":true,"name":"clearingDateFrom","req":true,"short":"Date and time in the format yyyy-MM-dd'T'HH:mm:ss","type":"`$STRING`","index$":1},{"active":true,"name":"clearingDateTo","req":true,"short":"Date and time in the format yyyy-MM-dd'T'HH:mm:ss","type":"`$STRING`","index$":2},{"active":true,"name":"corporateId","req":true,"type":"`$STRING`","index$":3},{"active":true,"name":"currency","req":true,"type":"`$STRING`","index$":4},{"active":true,"format":"int32","name":"responseCode","req":false,"type":"`$INTEGER`","index$":5},{"active":true,"name":"responseMessage","req":false,"type":"`$STRING`","index$":6},{"active":true,"name":"sumOverCreditTx","req":false,"type":"`$OBJECT`","index$":7},{"active":true,"name":"sumOverDebitTx","req":false,"type":"`$OBJECT`","index$":8},{"active":true,"format":"int32","name":"terminalId","req":false,"type":"`$INTEGER`","index$":9}],"name":"report_data","op":{"create":{"input":"data","name":"create","points":[{"active":true,"args":{},"contract":{"id":"POST /public/digitalservices/reportData","json":"{\"operationId\":\"getReportData\",\"parameters\":[],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"clearingDateFrom\":{\"description\":\"Date and time in the format yyyy-MM-dd'T'HH:mm:ss\",\"example\":\"2024-04-11T11:41:31\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ss\",\"type\":\"string\"},\"clearingDateTo\":{\"description\":\"Date and time in the format yyyy-MM-dd'T'HH:mm:ss\",\"example\":\"2024-04-11T11:41:31\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ss\",\"type\":\"string\"},\"corporateId\":{\"type\":\"string\"},\"currency\":{\"maxLength\":3,\"minLength\":3,\"type\":\"string\"},\"terminalId\":{\"format\":\"int32\",\"type\":\"integer\"}},\"required\":[\"clearingDateFrom\",\"clearingDateTo\",\"corporateId\",\"currency\"],\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"cardBrandReportData\":{\"items\":{\"properties\":{\"cardBrand\":{\"type\":\"string\"},\"creditCount\":{\"format\":\"int32\",\"type\":\"integer\"},\"creditTotal\":{\"format\":\"int32\",\"type\":\"integer\"},\"debitCount\":{\"format\":\"int32\",\"type\":\"integer\"},\"debitTotal\":{\"format\":\"int32\",\"type\":\"integer\"},\"tipAmount\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"},\"type\":\"array\"},\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"},\"sumOverCreditTx\":{\"properties\":{\"creditCountSum\":{\"format\":\"int32\",\"type\":\"integer\"},\"creditTotalSum\":{\"format\":\"int32\",\"type\":\"integer\"},\"firstTx\":{\"type\":\"number\"},\"lastTx\":{\"type\":\"number\"}},\"type\":\"object\"},\"sumOverDebitTx\":{\"properties\":{\"debitCountSum\":{\"format\":\"int32\",\"type\":\"integer\"},\"debitTotalSum\":{\"format\":\"int32\",\"type\":\"integer\"},\"firstTx\":{\"type\":\"number\"},\"lastTx\":{\"type\":\"number\"},\"tipAmountSum\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"}},\"type\":\"object\"}}},\"description\":\"Successful operation\"},\"400\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\n* Invalid request data. Bad request\\n\"},\"401\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\nUnauthorized - Authentication failed:<br>\\n\"},\"403\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Forbidden - Missing role: DAILY_REPORTS_VIEW or DAILY_BO_REPORTS_VIEW\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Internal server error\"}},\"security\":[{\"bearer-key\":[]}],\"securitySchemes\":{\"basic-key\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-key\":{\"bearerFormat\":\"JWT\",\"scheme\":\"bearer\",\"type\":\"http\"},\"tecsweb-key\":{\"description\":\"TecsWeb token\",\"in\":\"header\",\"name\":\"TecsWebToken\",\"type\":\"apiKey\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/public/digitalservices/reportData","segments":[{"lit":"public"},{"lit":"digitalservices"},{"lit":"reportData"}],"select":{},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"report_data","name__orig":"report_data","Name":"ReportData","name_":"report_data","name-":"report-data","NAME":"REPORT_DATA","index$":28}, {"active":true,"entity":"report_data","key$":"BasicReportDataFlow","kind":"basic","name":"BasicReportDataFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"report_data_ref01"},"match":{},"op":"create","spec":[],"valid":[],"index$":0}]}, 'ReportData')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const report_data_ref01_ent = client.ReportData()
    let report_data_ref01_data = setup.data.new.report_data['report_data_ref01']

    report_data_ref01_data = (await report_data_ref01_ent.create(report_data_ref01_data)).data()
    assert(null != report_data_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/report_data/ReportDataTestData.json')

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
    ['report_data01','report_data02','report_data03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_REPORT_DATA_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_REPORT_DATA_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_REPORT_DATA_ENTID']
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
  
