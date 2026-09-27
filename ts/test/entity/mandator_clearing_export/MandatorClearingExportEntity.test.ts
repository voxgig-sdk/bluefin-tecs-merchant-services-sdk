

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


describe('MandatorClearingExportEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.MandatorClearingExport()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'mandator_clearing_export.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"clearingDateFrom":{"a":true,"h":"Clearing Date From","n":"clearingDateFrom","r":true,"sh":"Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ","t":"`$STRING`","key$":"clearingDateFrom","index$":0},"clearingDateTo":{"a":true,"h":"Clearing Date To","n":"clearingDateTo","r":true,"sh":"Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ","t":"`$STRING`","key$":"clearingDateTo","index$":1},"pagination":{"a":true,"h":"Pagination","n":"pagination","r":false,"t":"`$OBJECT`","key$":"pagination","index$":2},"records":{"a":true,"h":"Records","n":"records","r":false,"t":"`$ARRAY`","key$":"records","index$":3},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":4},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":5}},"name":"mandator_clearing_export","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/digitalservices/mandatorClearingExport","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/digitalservices/mandatorClearingExport","q":{},"r":{},"s":[{"lit":"public"},{"lit":"digitalservices"},{"lit":"mandatorClearingExport"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"mandator_clearing_export","name__orig":"mandator_clearing_export","Name":"MandatorClearingExport","name_":"mandator_clearing_export","name-":"mandator-clearing-export","NAME":"MANDATOR_CLEARING_EXPORT","index$":18}, {"active":true,"entity":"mandator_clearing_export","key$":"BasicMandatorClearingExportFlow","kind":"basic","name":"BasicMandatorClearingExportFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"mandator_clearing_export_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'MandatorClearingExport', {"POST /public/digitalservices/mandatorClearingExport":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"clearingDateFrom":{"type":"string","description":"Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ","example":"2024-04-11T11:41:31+02:00","pattern":"yyyy-MM-dd'T'HH:mm:ssZ","key$":"clearingDateFrom"},"clearingDateTo":{"type":"string","description":"Date and time in the format yyyy-MM-dd'T'HH:mm:ssZ","example":"2024-04-11T11:41:31+02:00","pattern":"yyyy-MM-dd'T'HH:mm:ssZ","key$":"clearingDateTo"},"pagination":{"type":"object","properties":{"page":{"type":"integer","format":"int32"},"size":{"type":"integer","format":"int32"}},"x-ref":"#/components/schemas/PaginationRequest","key$":"pagination"}},"required":["clearingDateFrom","clearingDateTo"],"x-ref":"#/components/schemas/MandatorClearingExportRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const mandator_clearing_export_ref01_ent = client.MandatorClearingExport()
    let mandator_clearing_export_ref01_data = setup.data.new.mandator_clearing_export['mandator_clearing_export_ref01']

    mandator_clearing_export_ref01_data = (await mandator_clearing_export_ref01_ent.create(mandator_clearing_export_ref01_data)).data()
    assert(null != mandator_clearing_export_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/mandator_clearing_export/MandatorClearingExportTestData.json')

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
    ['mandator_clearing_export01','mandator_clearing_export02','mandator_clearing_export03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_MANDATOR_CLEARING_EXPORT_ENTID']
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
  
