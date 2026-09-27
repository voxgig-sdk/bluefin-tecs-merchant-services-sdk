

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

    const live = 'TRUE' === process.env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'report_data.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"cardBrandReportData":{"a":true,"h":"Card Brand Report Data","n":"cardBrandReportData","r":false,"t":"`$ARRAY`","key$":"cardBrandReportData","index$":0},"clearingDateFrom":{"a":true,"h":"Clearing Date From","n":"clearingDateFrom","r":true,"sh":"Date and time in the format yyyy-MM-dd'T'HH:mm:ss","t":"`$STRING`","key$":"clearingDateFrom","index$":1},"clearingDateTo":{"a":true,"h":"Clearing Date To","n":"clearingDateTo","r":true,"sh":"Date and time in the format yyyy-MM-dd'T'HH:mm:ss","t":"`$STRING`","key$":"clearingDateTo","index$":2},"corporateId":{"a":true,"h":"Corporate Id","n":"corporateId","r":true,"t":"`$STRING`","key$":"corporateId","index$":3},"currency":{"a":true,"h":"Currency","n":"currency","r":true,"t":"`$STRING`","key$":"currency","index$":4},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":5},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":6},"sumOverCreditTx":{"a":true,"h":"Sum Over Credit Tx","n":"sumOverCreditTx","r":false,"t":"`$OBJECT`","key$":"sumOverCreditTx","index$":7},"sumOverDebitTx":{"a":true,"h":"Sum Over Debit Tx","n":"sumOverDebitTx","r":false,"t":"`$OBJECT`","key$":"sumOverDebitTx","index$":8},"terminalId":{"a":true,"fo":"int32","h":"Terminal Id","n":"terminalId","r":false,"t":"`$INTEGER`","key$":"terminalId","index$":9}},"name":"report_data","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/digitalservices/reportData","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/digitalservices/reportData","q":{},"r":{},"s":[{"lit":"public"},{"lit":"digitalservices"},{"lit":"reportData"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"report_data","name__orig":"report_data","Name":"ReportData","name_":"report_data","name-":"report-data","NAME":"REPORT_DATA","index$":30}, {"active":true,"entity":"report_data","key$":"BasicReportDataFlow","kind":"basic","name":"BasicReportDataFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"report_data_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'ReportData', {"POST /public/digitalservices/reportData":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"terminalId":{"type":"integer","format":"int32","key$":"terminalId"},"corporateId":{"type":"string","key$":"corporateId"},"currency":{"type":"string","maxLength":3,"minLength":3,"key$":"currency"},"clearingDateFrom":{"type":"string","description":"Date and time in the format yyyy-MM-dd'T'HH:mm:ss","example":"2024-04-11T11:41:31","pattern":"yyyy-MM-dd'T'HH:mm:ss","key$":"clearingDateFrom"},"clearingDateTo":{"type":"string","description":"Date and time in the format yyyy-MM-dd'T'HH:mm:ss","example":"2024-04-11T11:41:31","pattern":"yyyy-MM-dd'T'HH:mm:ss","key$":"clearingDateTo"}},"required":["clearingDateFrom","clearingDateTo","corporateId","currency"],"x-ref":"#/components/schemas/GetReportDataRequest","index$":1}}},"required":true},"parameters":[]}})
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



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

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
  
