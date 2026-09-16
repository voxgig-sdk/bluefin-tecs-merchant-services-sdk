

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

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create', 'load']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'digital_services_api.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"clearingDateFrom","req":true,"short":"Date and time in the format yyyy-MM-dd'T'HH:mm:ssz","type":"`$STRING`","index$":0},{"active":true,"name":"clearingDateTo","req":true,"short":"Date and time in the format yyyy-MM-dd'T'HH:mm:ssz","type":"`$STRING`","index$":1},{"active":true,"format":"int32","name":"responseCode","req":false,"type":"`$INTEGER`","index$":2},{"active":true,"name":"responseMessage","req":false,"type":"`$STRING`","index$":3},{"active":true,"format":"int32","name":"txCount","req":false,"type":"`$INTEGER`","index$":4},{"active":true,"name":"txIdEnd","req":false,"type":"`$STRING`","index$":5},{"active":true,"name":"txIdStart","req":false,"type":"`$STRING`","index$":6},{"active":true,"format":"int32","name":"txSeqNoEnd","req":false,"type":"`$INTEGER`","index$":7},{"active":true,"format":"int32","name":"txSeqNoStart","req":false,"type":"`$INTEGER`","index$":8},{"active":true,"format":"int32","name":"txTotal","req":false,"type":"`$INTEGER`","index$":9}],"name":"digital_services_api","op":{"create":{"input":"data","name":"create","points":[{"active":true,"args":{"params":[{"active":true,"kind":"param","name":"file_id","orig":"file_id","reqd":true,"type":"`$STRING`","index$":0}]},"contract":{"id":"POST /public/digitalservices/mandatorClearingExportDownload/{fileId}","json":"{\"operationId\":\"downloadMandatorClearingExport\",\"parameters\":[{\"description\":\"File ID returned from the initial export request\",\"in\":\"path\",\"name\":\"fileId\",\"required\":true,\"schema\":{\"type\":\"string\"}}],\"protocol\":\"http\",\"responses\":{\"200\":{\"content\":{\"application/zip\":{}},\"description\":\"ZIP file download containing CSV data\"},\"400\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"File is still processing\"},\"401\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\nUnauthorized - Authentication failed:<br>\\n\"},\"403\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Forbidden - Missing role: BO_MANDATOR_CLEARING_EXPORT\"},\"404\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"File not found\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Internal server error\"}},\"security\":[{\"bearer-key\":[]}],\"securitySchemes\":{\"basic-key\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-key\":{\"bearerFormat\":\"JWT\",\"scheme\":\"bearer\",\"type\":\"http\"},\"tecsweb-key\":{\"description\":\"TecsWeb token\",\"in\":\"header\",\"name\":\"TecsWebToken\",\"type\":\"apiKey\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/public/digitalservices/mandatorClearingExportDownload/{fileId}","rename":{"param":{"fileId":"file_id"}},"segments":[{"lit":"public"},{"lit":"digitalservices"},{"lit":"mandatorClearingExportDownload"},{"var":"file_id"}],"select":{"exist":["file_id"]},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0},{"active":true,"args":{},"contract":{"id":"POST /public/digitalservices/mandatorClearingExportMetadata","json":"{\"operationId\":\"mandatorClearingExportMetadata\",\"parameters\":[],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"clearingDateFrom\":{\"description\":\"Date and time in the format yyyy-MM-dd'T'HH:mm:ssz\",\"example\":\"2024-04-11T11:41:31+02:00\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ssZ\",\"type\":\"string\"},\"clearingDateTo\":{\"description\":\"Date and time in the format yyyy-MM-dd'T'HH:mm:ssz\",\"example\":\"2024-04-11T11:41:31+02:00\",\"pattern\":\"yyyy-MM-dd'T'HH:mm:ssZ\",\"type\":\"string\"}},\"required\":[\"clearingDateFrom\",\"clearingDateTo\"],\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"},\"txCount\":{\"format\":\"int32\",\"type\":\"integer\"},\"txIdEnd\":{\"type\":\"string\"},\"txIdStart\":{\"type\":\"string\"},\"txSeqNoEnd\":{\"format\":\"int32\",\"type\":\"integer\"},\"txSeqNoStart\":{\"format\":\"int32\",\"type\":\"integer\"},\"txTotal\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"}}},\"description\":\"Successful operation\"},\"400\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\n* Invalid request data. Bad request\\n\"},\"401\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"\\nUnauthorized - Authentication failed:<br>\\n\"},\"403\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Forbidden - Missing role: BO_MANDATOR_CLEARING_EXPORT\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Internal server error\"}},\"security\":[{\"bearer-key\":[]}],\"securitySchemes\":{\"basic-key\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-key\":{\"bearerFormat\":\"JWT\",\"scheme\":\"bearer\",\"type\":\"http\"},\"tecsweb-key\":{\"description\":\"TecsWeb token\",\"in\":\"header\",\"name\":\"TecsWebToken\",\"type\":\"apiKey\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/public/digitalservices/mandatorClearingExportMetadata","segments":[{"lit":"public"},{"lit":"digitalservices"},{"lit":"mandatorClearingExportMetadata"}],"select":{},"transform":{"req":"`reqdata`","res":"`body`"},"index$":1}],"key$":"create"},"load":{"input":"data","name":"load","points":[{"active":true,"args":{},"contract":{"id":"GET /public/digitalservices/mandatorClearingExportDownload/status","json":"{\"operationId\":\"getMandatorClearingExportConcurrencyStatus\",\"parameters\":[],\"protocol\":\"http\",\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"type\":\"string\"}}},\"description\":\"Export concurrency status retrieved successfully\"},\"401\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Unauthorized\"},\"403\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Forbidden - no permissions\"},\"500\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Internal server error\"}},\"securitySchemes\":{\"basic-key\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-key\":{\"bearerFormat\":\"JWT\",\"scheme\":\"bearer\",\"type\":\"http\"},\"tecsweb-key\":{\"description\":\"TecsWeb token\",\"in\":\"header\",\"name\":\"TecsWebToken\",\"type\":\"apiKey\"}},\"securitySource\":\"unspecified\"}","source":"openapi3","version":1},"kind":"http","method":"GET","orig":"/public/digitalservices/mandatorClearingExportDownload/status","segments":[{"lit":"public"},{"lit":"digitalservices"},{"lit":"mandatorClearingExportDownload"},{"lit":"status"}],"select":{},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"load"}},"relations":{"ancestors":[["mandator_clearing_export_download"]]},"key$":"digital_services_api","name__orig":"digital_services_api","Name":"DigitalServicesApi","name_":"digital_services_api","name-":"digital-services-api","NAME":"DIGITAL_SERVICES_API","index$":4}, {"active":true,"entity":"digital_services_api","key$":"BasicDigitalServicesApiFlow","kind":"basic","name":"BasicDigitalServicesApiFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"digital_services_api_ref01"},"match":{},"op":"create","spec":[],"valid":[],"index$":0},{"active":true,"data":{},"input":{"ref":"digital_services_api_ref01","srcdatavar":"digital_services_api_ref01_data","suffix":"_dt0"},"match":{},"op":"load","spec":[],"valid":[{"apply":"TextFieldMark","def":{"mark":"Mark01-digital_services_api_ref01"}}],"index$":1}]}, 'DigitalServicesApi')
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
    const digital_services_api_ref01_match_dt0: any = {}
    const digital_services_api_ref01_data_dt0 = (await digital_services_api_ref01_ent.load(digital_services_api_ref01_match_dt0)).data()
    assert(null != digital_services_api_ref01_data_dt0)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

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
  
