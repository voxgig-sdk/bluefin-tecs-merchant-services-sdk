
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


describe('DigitalServicesApiEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.DigitalServicesApi()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"clearingDateFrom":{"a":true,"h":"Clearing Date From","n":"clearingDateFrom","r":true,"sh":"Date and time in the format yyyy-MM-dd'T'HH:mm:ssz","t":"`$STRING`","key$":"clearingDateFrom","index$":0},"clearingDateTo":{"a":true,"h":"Clearing Date To","n":"clearingDateTo","r":true,"sh":"Date and time in the format yyyy-MM-dd'T'HH:mm:ssz","t":"`$STRING`","key$":"clearingDateTo","index$":1},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":2},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":3},"txCount":{"a":true,"fo":"int32","h":"Tx Count","n":"txCount","r":false,"t":"`$INTEGER`","key$":"txCount","index$":4},"txIdEnd":{"a":true,"h":"Tx Id End","n":"txIdEnd","r":false,"t":"`$STRING`","key$":"txIdEnd","index$":5},"txIdStart":{"a":true,"h":"Tx Id Start","n":"txIdStart","r":false,"t":"`$STRING`","key$":"txIdStart","index$":6},"txSeqNoEnd":{"a":true,"fo":"int32","h":"Tx Seq No End","n":"txSeqNoEnd","r":false,"t":"`$INTEGER`","key$":"txSeqNoEnd","index$":7},"txSeqNoStart":{"a":true,"fo":"int32","h":"Tx Seq No Start","n":"txSeqNoStart","r":false,"t":"`$INTEGER`","key$":"txSeqNoStart","index$":8},"txTotal":{"a":true,"fo":"int32","h":"Tx Total","n":"txTotal","r":false,"t":"`$INTEGER`","key$":"txTotal","index$":9}},"name":"digital_services_api","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/digitalservices/mandatorClearingExportDownload/{fileId}","source":"openapi3","version":2},"g":{"params":[{"a":true,"k":"param","n":"file_id","or":"file_id","r":true,"t":"`$STRING`","index$":0}]},"k":"http","m":"POST","o":"/public/digitalservices/mandatorClearingExportDownload/{fileId}","q":{"exist":["file_id"]},"r":{"param":{"fileId":"file_id"}},"s":[{"lit":"public"},{"lit":"digitalservices"},{"lit":"mandatorClearingExportDownload"},{"var":"file_id"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0},{"a":true,"co":{"id":"POST /public/digitalservices/mandatorClearingExportMetadata","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/digitalservices/mandatorClearingExportMetadata","q":{},"r":{},"s":[{"lit":"public"},{"lit":"digitalservices"},{"lit":"mandatorClearingExportMetadata"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":1}],"key$":"create"},"load":{"input":"data","name":"load","points":[{"a":true,"co":{"id":"GET /public/digitalservices/mandatorClearingExportDownload/status","source":"openapi3","version":2},"g":{},"k":"http","m":"GET","o":"/public/digitalservices/mandatorClearingExportDownload/status","q":{},"r":{},"s":[{"lit":"public"},{"lit":"digitalservices"},{"lit":"mandatorClearingExportDownload"},{"lit":"status"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"load"}},"relations":{"ancestors":[["$.main.kit.entity.mandator_clearing_export_download"]]},"key$":"digital_services_api","name__orig":"digital_services_api","Name":"DigitalServicesApi","name_":"digital_services_api","name-":"digital-services-api","NAME":"DIGITAL_SERVICES_API","index$":6}, {"active":true,"entity":"digital_services_api","key$":"BasicDigitalServicesApiFlow","kind":"basic","name":"BasicDigitalServicesApiFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"digital_services_api_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0},{"a":true,"d":{},"i":{"ref":"digital_services_api_ref01","srcdatavar":"digital_services_api_ref01_data","suffix":"_dt0"},"m":{},"o":"load","s":[],"v":[{"apply":"TextFieldMark","def":{"mark":"Mark01-digital_services_api_ref01"}}],"index$":1}]}, 'DigitalServicesApi', {"POST /public/digitalservices/mandatorClearingExportDownload/{fileId}":{"protocol":"http","parameters":[{"name":"fileId","in":"path","description":"File ID returned from the initial export request","required":true,"schema":{"type":"string"},"index$":0}]},"POST /public/digitalservices/mandatorClearingExportMetadata":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"clearingDateFrom":{"type":"string","description":"Date and time in the format yyyy-MM-dd'T'HH:mm:ssz","example":"2024-04-11T11:41:31+02:00","pattern":"yyyy-MM-dd'T'HH:mm:ssZ","key$":"clearingDateFrom"},"clearingDateTo":{"type":"string","description":"Date and time in the format yyyy-MM-dd'T'HH:mm:ssz","example":"2024-04-11T11:41:31+02:00","pattern":"yyyy-MM-dd'T'HH:mm:ssZ","key$":"clearingDateTo"}},"required":["clearingDateFrom","clearingDateTo"],"x-ref":"#/components/schemas/MandatorClearingExportMetadataRequest","index$":1}}},"required":true},"parameters":[]},"GET /public/digitalservices/mandatorClearingExportDownload/status":{"protocol":"http","parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const digital_services_api_ref01_ent = client.DigitalServicesApi()
    let digital_services_api_ref01_data = setup.data.new.digital_services_api['digital_services_api_ref01']

    digital_services_api_ref01_data = (await digital_services_api_ref01_ent.create(digital_services_api_ref01_data)).data()
    assert(null != digital_services_api_ref01_data)


    // LOAD
    const digital_services_api_ref01_match_dt0 = {}
    const digital_services_api_ref01_data_dt0 = (await digital_services_api_ref01_ent.load(digital_services_api_ref01_match_dt0)).data()
    assert(null != digital_services_api_ref01_data_dt0)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/digital_services_api/DigitalServicesApiTestData.json')

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
    ['digital_services_api01','digital_services_api02','digital_services_api03','mandator_clearing_export_download01','mandator_clearing_export_download02','mandator_clearing_export_download03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_DIGITAL_SERVICES_API_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_DIGITAL_SERVICES_API_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_DIGITAL_SERVICES_API_ENTID']
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
  
