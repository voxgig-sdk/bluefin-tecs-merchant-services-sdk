
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


describe('MandatorClearingExportSummaryEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.MandatorClearingExportSummary()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"clearingDateFrom":{"a":true,"h":"Clearing Date From","n":"clearingDateFrom","r":true,"sh":"Date and time in the format yyyy-MM-dd'T'HH:mm:ssz","t":"`$STRING`","key$":"clearingDateFrom","index$":0},"clearingDateTo":{"a":true,"h":"Clearing Date To","n":"clearingDateTo","r":true,"sh":"Date and time in the format yyyy-MM-dd'T'HH:mm:ssz","t":"`$STRING`","key$":"clearingDateTo","index$":1},"records":{"a":true,"h":"Records","n":"records","r":false,"t":"`$ARRAY`","key$":"records","index$":2},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":3},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":4}},"name":"mandator_clearing_export_summary","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/digitalservices/mandatorClearingExportSummary","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/digitalservices/mandatorClearingExportSummary","q":{},"r":{},"s":[{"lit":"public"},{"lit":"digitalservices"},{"lit":"mandatorClearingExportSummary"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"mandator_clearing_export_summary","name__orig":"mandator_clearing_export_summary","Name":"MandatorClearingExportSummary","name_":"mandator_clearing_export_summary","name-":"mandator-clearing-export-summary","NAME":"MANDATOR_CLEARING_EXPORT_SUMMARY","index$":20}, {"active":true,"entity":"mandator_clearing_export_summary","key$":"BasicMandatorClearingExportSummaryFlow","kind":"basic","name":"BasicMandatorClearingExportSummaryFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"mandator_clearing_export_summary_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'MandatorClearingExportSummary', {"POST /public/digitalservices/mandatorClearingExportSummary":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"clearingDateFrom":{"type":"string","description":"Date and time in the format yyyy-MM-dd'T'HH:mm:ssz","example":"2024-04-11T11:41:31+02:00","pattern":"yyyy-MM-dd'T'HH:mm:ssZ","key$":"clearingDateFrom"},"clearingDateTo":{"type":"string","description":"Date and time in the format yyyy-MM-dd'T'HH:mm:ssz","example":"2024-04-11T11:41:31+02:00","pattern":"yyyy-MM-dd'T'HH:mm:ssZ","key$":"clearingDateTo"}},"required":["clearingDateFrom","clearingDateTo"],"x-ref":"#/components/schemas/MandatorClearingExportSummaryRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const mandator_clearing_export_summary_ref01_ent = client.MandatorClearingExportSummary()
    let mandator_clearing_export_summary_ref01_data = setup.data.new.mandator_clearing_export_summary['mandator_clearing_export_summary_ref01']

    mandator_clearing_export_summary_ref01_data = (await mandator_clearing_export_summary_ref01_ent.create(mandator_clearing_export_summary_ref01_data)).data()
    assert(null != mandator_clearing_export_summary_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/mandator_clearing_export_summary/MandatorClearingExportSummaryTestData.json')

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
    ['mandator_clearing_export_summary01','mandator_clearing_export_summary02','mandator_clearing_export_summary03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_SUMMARY_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_SUMMARY_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_SUMMARY_ENTID']
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
  
