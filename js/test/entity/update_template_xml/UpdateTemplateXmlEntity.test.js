
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


describe('UpdateTemplateXmlEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.UpdateTemplateXml()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":0},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":1},"templateName":{"a":true,"h":"Template Name","n":"templateName","r":true,"t":"`$STRING`","key$":"templateName","index$":2},"templateXml":{"a":true,"h":"Template Xml","n":"templateXml","r":true,"t":"`$STRING`","key$":"templateXml","index$":3}},"name":"update_template_xml","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /public/updateTemplateXml","source":"openapi3","version":2},"g":{},"k":"http","m":"POST","o":"/public/updateTemplateXml","q":{},"r":{},"s":[{"lit":"public"},{"lit":"updateTemplateXml"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"update_template_xml","name__orig":"update_template_xml","Name":"UpdateTemplateXml","name_":"update_template_xml","name-":"update-template-xml","NAME":"UPDATE_TEMPLATE_XML","index$":38}, {"active":true,"entity":"update_template_xml","key$":"BasicUpdateTemplateXmlFlow","kind":"basic","name":"BasicUpdateTemplateXmlFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"update_template_xml_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'UpdateTemplateXml', {"POST /public/updateTemplateXml":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"templateName":{"type":"string","minLength":1,"key$":"templateName"},"templateXml":{"type":"string","minLength":1,"key$":"templateXml"}},"required":["templateName","templateXml"],"x-ref":"#/components/schemas/UpdateTemplateXmlRequest","index$":1}}},"required":true},"parameters":[]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const update_template_xml_ref01_ent = client.UpdateTemplateXml()
    let update_template_xml_ref01_data = setup.data.new.update_template_xml['update_template_xml_ref01']

    update_template_xml_ref01_data = (await update_template_xml_ref01_ent.create(update_template_xml_ref01_data)).data()
    assert(null != update_template_xml_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/update_template_xml/UpdateTemplateXmlTestData.json')

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
    ['update_template_xml01','update_template_xml02','update_template_xml03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_UPDATE_TEMPLATE_XML_ENTID': idmap,
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_UPDATE_TEMPLATE_XML_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_UPDATE_TEMPLATE_XML_ENTID']
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
  
