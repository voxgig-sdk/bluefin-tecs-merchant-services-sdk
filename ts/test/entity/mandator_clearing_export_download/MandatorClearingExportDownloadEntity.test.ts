

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

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create', 'load']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'mandator_clearing_export_download.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"clearingDateFrom":{"a":true,"fo":"date-time","h":"Clearing Date From","n":"clearingDateFrom","r":true,"sh":"Start date for clearing export (inclusive)","t":"`$STRING`","key$":"clearingDateFrom","index$":0},"clearingDateTo":{"a":true,"fo":"date-time","h":"Clearing Date To","n":"clearingDateTo","r":true,"sh":"End date for clearing export (inclusive)","t":"`$STRING`","key$":"clearingDateTo","index$":1},"fileId":{"a":true,"h":"File Id","n":"fileId","r":false,"sh":"Unique file identifier for tracking and downloading","t":"`$STRING`","key$":"fileId","index$":2},"filenameTemplate":{"a":true,"h":"Filename Template","n":"filenameTemplate","r":false,"sh":"Optional filename template for the export file","t":"`$STRING`","key$":"filenameTemplate","index$":3},"id":{"a":true,"h":"Id","n":"id","r":false,"t":"`$STRING`","key$":"id","index$":4},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":5},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":6},"status":{"a":true,"h":"Status","n":"status","r":false,"sh":"Processing status of the export request","t":"`$STRING`","key$":"status","index$":7}},"id":{"field":"id","name":"id"},"name":"mandator_clearing_export_download","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/digitalservices/mandatorClearingExportDownload","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/digitalservices/mandatorClearingExportDownload","q":{},"r":{},"s":[{"lit":"public"},{"lit":"digitalservices"},{"lit":"mandatorClearingExportDownload"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"},"load":{"input":"data","name":"load","points":[{"a":true,"co":{"id":"GET /public/digitalservices/mandatorClearingExportDownload/{fileId}","source":"openapi3","version":2},"g":{"params":[{"a":true,"k":"param","n":"id","or":"file_id","r":true,"t":"`$STRING`","index$":0}]},"k":"http","m":"GET","o":"/public/digitalservices/mandatorClearingExportDownload/{fileId}","q":{"exist":["id"]},"r":{"param":{"fileId":"id"}},"s":[{"lit":"public"},{"lit":"digitalservices"},{"lit":"mandatorClearingExportDownload"},{"var":"id"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"load"}},"relations":{"ancestors":[]},"key$":"mandator_clearing_export_download","name__orig":"mandator_clearing_export_download","Name":"MandatorClearingExportDownload","name_":"mandator_clearing_export_download","name-":"mandator-clearing-export-download","NAME":"MANDATOR_CLEARING_EXPORT_DOWNLOAD","index$":19}, {"active":true,"entity":"mandator_clearing_export_download","key$":"BasicMandatorClearingExportDownloadFlow","kind":"basic","name":"BasicMandatorClearingExportDownloadFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"mandator_clearing_export_download_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0},{"a":true,"d":{},"i":{"ref":"mandator_clearing_export_download_ref01","srcdatavar":"mandator_clearing_export_download_ref01_data","suffix":"_dt0"},"m":{"id":"mandator_clearing_export_download01"},"o":"load","s":[],"v":[{"apply":"TextFieldMark","def":{"mark":"Mark01-mandator_clearing_export_download_ref01"}}],"index$":1}]}, 'MandatorClearingExportDownload', {"POST /public/digitalservices/mandatorClearingExportDownload":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","description":"Request for async mandator clearing export download","properties":{"clearingDateFrom":{"type":"string","format":"date-time","description":"Start date for clearing export (inclusive)","example":"2024-04-25T01:00:00+02:00","key$":"clearingDateFrom"},"clearingDateTo":{"type":"string","format":"date-time","description":"End date for clearing export (inclusive)","example":"2025-01-01T01:00:00+02:00","key$":"clearingDateTo"},"filenameTemplate":{"type":"string","description":"Optional filename template for the export file","example":"{mandator}-clearing-transactions-{clearingDateFrom}-{clearingDateTo}","key$":"filenameTemplate"}},"required":["clearingDateFrom","clearingDateTo"],"x-ref":"#/components/schemas/MandatorClearingExportDownloadRequest","index$":1}}},"required":true},"parameters":[]},"GET /public/digitalservices/mandatorClearingExportDownload/{fileId}":{"protocol":"http","parameters":[{"name":"fileId","in":"path","description":"File ID returned from the initial export request","required":true,"schema":{"type":"string"},"index$":0}]}})
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
    const mandator_clearing_export_download_ref01_match_dt0: any = {}
    mandator_clearing_export_download_ref01_match_dt0.id = mandator_clearing_export_download_ref01_data.id
    const mandator_clearing_export_download_ref01_data_dt0 = (await mandator_clearing_export_download_ref01_ent.load(mandator_clearing_export_download_ref01_match_dt0)).data()
    assert(mandator_clearing_export_download_ref01_data_dt0.id === mandator_clearing_export_download_ref01_data.id)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

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
  
