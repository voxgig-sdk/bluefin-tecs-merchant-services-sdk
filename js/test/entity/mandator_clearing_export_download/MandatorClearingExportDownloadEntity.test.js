
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


describe('MandatorClearingExportDownloadEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.MandatorClearingExportDownload()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"format":"date-time","name":"clearingDateFrom","req":true,"short":"Start date for clearing export (inclusive)","type":"`$STRING`","index$":0},{"active":true,"format":"date-time","name":"clearingDateTo","req":true,"short":"End date for clearing export (inclusive)","type":"`$STRING`","index$":1},{"active":true,"name":"fileId","req":false,"short":"Unique file identifier for tracking and downloading","type":"`$STRING`","index$":2},{"active":true,"name":"filenameTemplate","req":false,"short":"Optional filename template for the export file","type":"`$STRING`","index$":3},{"active":true,"name":"id","req":false,"type":"`$STRING`","index$":4},{"active":true,"format":"int32","name":"responseCode","req":false,"type":"`$INTEGER`","index$":5},{"active":true,"name":"responseMessage","req":false,"type":"`$STRING`","index$":6},{"active":true,"name":"status","req":false,"short":"Processing status of the export request","type":"`$STRING`","index$":7}],"id":{"field":"id","name":"id"},"name":"mandator_clearing_export_download","op":{"create":{"input":"data","name":"create","points":[{"active":true,"args":{},"contract":{"id":"POST /public/digitalservices/mandatorClearingExportDownload","json":"{\"operationId\":\"mandatorClearingExportDownload\",\"parameters\":[],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"description\":\"Request for async mandator clearing export download\",\"properties\":{\"clearingDateFrom\":{\"description\":\"Start date for clearing export (inclusive)\",\"example\":\"2024-04-25T01:00:00+02:00\",\"format\":\"date-time\",\"type\":\"string\"},\"clearingDateTo\":{\"description\":\"End date for clearing export (inclusive)\",\"example\":\"2025-01-01T01:00:00+02:00\",\"format\":\"date-time\",\"type\":\"string\"},\"filenameTemplate\":{\"description\":\"Optional filename template for the export file\",\"example\":\"{mandator}-clearing-transactions-{clearingDateFrom}-{clearingDateTo}\",\"type\":\"string\"}},\"required\":[\"clearingDateFrom\",\"clearingDateTo\"],\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"description\":\"Response for async mandator clearing export download request\",\"properties\":{\"fileId\":{\"description\":\"Unique file identifier for tracking and downloading\",\"example\":\"ad6352d9-b992-45f7-adce-ee306a01ef68\",\"type\":\"string\"},\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"},\"status\":{\"description\":\"Processing status of the export request\",\"example\":\"PROCESSING\",\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Successful operation - processing started\"},\"400\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\n* Invalid request data. Bad request\\n* System is busy processing another file\\n\"},\"401\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\nUnauthorized - Authentication failed:<br>\\n\"},\"403\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Forbidden - Missing role: BO_MANDATOR_CLEARING_EXPORT\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Internal server error\"}},\"security\":[{\"bearer-key\":[]}],\"securitySchemes\":{\"basic-key\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-key\":{\"bearerFormat\":\"JWT\",\"scheme\":\"bearer\",\"type\":\"http\"},\"tecsweb-key\":{\"description\":\"TecsWeb token\",\"in\":\"header\",\"name\":\"TecsWebToken\",\"type\":\"apiKey\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/public/digitalservices/mandatorClearingExportDownload","segments":[{"lit":"public"},{"lit":"digitalservices"},{"lit":"mandatorClearingExportDownload"}],"select":{},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"},"load":{"input":"data","name":"load","points":[{"active":true,"args":{"params":[{"active":true,"kind":"param","name":"id","orig":"file_id","reqd":true,"type":"`$STRING`","index$":0}]},"contract":{"id":"GET /public/digitalservices/mandatorClearingExportDownload/{fileId}","json":"{\"operationId\":\"checkMandatorClearingExportStatus\",\"parameters\":[{\"description\":\"File ID returned from the initial export request\",\"in\":\"path\",\"name\":\"fileId\",\"required\":true,\"schema\":{\"type\":\"string\"}}],\"protocol\":\"http\",\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"description\":\"Response for async mandator clearing export download request\",\"properties\":{\"fileId\":{\"description\":\"Unique file identifier for tracking and downloading\",\"example\":\"ad6352d9-b992-45f7-adce-ee306a01ef68\",\"type\":\"string\"},\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"},\"status\":{\"description\":\"Processing status of the export request\",\"example\":\"PROCESSING\",\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Status information\"},\"401\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\nUnauthorized - Authentication failed:<br>\\n\"},\"403\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Forbidden - Missing role: BO_MANDATOR_CLEARING_EXPORT\"},\"404\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"File not found\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Internal server error\"}},\"security\":[{\"bearer-key\":[]}],\"securitySchemes\":{\"basic-key\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-key\":{\"bearerFormat\":\"JWT\",\"scheme\":\"bearer\",\"type\":\"http\"},\"tecsweb-key\":{\"description\":\"TecsWeb token\",\"in\":\"header\",\"name\":\"TecsWebToken\",\"type\":\"apiKey\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"GET","orig":"/public/digitalservices/mandatorClearingExportDownload/{fileId}","rename":{"param":{"fileId":"id"}},"segments":[{"lit":"public"},{"lit":"digitalservices"},{"lit":"mandatorClearingExportDownload"},{"var":"id"}],"select":{"exist":["id"]},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"load"}},"relations":{"ancestors":[]},"key$":"mandator_clearing_export_download","name__orig":"mandator_clearing_export_download","Name":"MandatorClearingExportDownload","name_":"mandator_clearing_export_download","name-":"mandator-clearing-export-download","NAME":"MANDATOR_CLEARING_EXPORT_DOWNLOAD","index$":17}, {"active":true,"entity":"mandator_clearing_export_download","key$":"BasicMandatorClearingExportDownloadFlow","kind":"basic","name":"BasicMandatorClearingExportDownloadFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"mandator_clearing_export_download_ref01"},"match":{},"op":"create","spec":[],"valid":[],"index$":0},{"active":true,"data":{},"input":{"ref":"mandator_clearing_export_download_ref01","srcdatavar":"mandator_clearing_export_download_ref01_data","suffix":"_dt0"},"match":{"id":"mandator_clearing_export_download01"},"op":"load","spec":[],"valid":[{"apply":"TextFieldMark","def":{"mark":"Mark01-mandator_clearing_export_download_ref01"}}],"index$":1}]}, 'MandatorClearingExportDownload')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const mandator_clearing_export_download_ref01_ent = client.MandatorClearingExportDownload()
    let mandator_clearing_export_download_ref01_data = setup.data.new.mandator_clearing_export_download['mandator_clearing_export_download_ref01']

    mandator_clearing_export_download_ref01_data = (await mandator_clearing_export_download_ref01_ent.create(mandator_clearing_export_download_ref01_data)).data()
    assert(null != mandator_clearing_export_download_ref01_data.id)


    // LOAD
    const mandator_clearing_export_download_ref01_match_dt0 = {}
    mandator_clearing_export_download_ref01_match_dt0.id = mandator_clearing_export_download_ref01_data.id
    const mandator_clearing_export_download_ref01_data_dt0 = (await mandator_clearing_export_download_ref01_ent.load(mandator_clearing_export_download_ref01_match_dt0)).data()
    assert(mandator_clearing_export_download_ref01_data_dt0.id === mandator_clearing_export_download_ref01_data.id)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/mandator_clearing_export_download/MandatorClearingExportDownloadTestData.json')

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
    ['mandator_clearing_export_download01','mandator_clearing_export_download02','mandator_clearing_export_download03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_DOWNLOAD_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_DOWNLOAD_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_DOWNLOAD_ENTID']
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
  
