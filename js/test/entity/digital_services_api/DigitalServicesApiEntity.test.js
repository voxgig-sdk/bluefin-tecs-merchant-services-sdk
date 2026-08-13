
const envlocal = __dirname + '/../../../.env.local'
require('dotenv').config({ quiet: true, path: [envlocal] })

const Path = require('node:path')
const Fs = require('node:fs')

const { test, describe } = require('node:test')
const assert = require('node:assert')


const { BluefinTecsMerchantServicesSDK, BaseFeature, stdutil, config } = require('../../..')

const {
  envOverride,
  makeCtrl,
  makeMatch,
  makeReqdata,
  makeStepData,
  makeValid,
} = require('../../utility')


describe('DigitalServicesApiEntity', async () => {

  test('instance', async () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    const ent = testsdk.DigitalServicesApi()
    assert(null != ent)
  })


  test('basic', async () => {

    const setup = basicSetup()
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
    'BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY': 'NONE',
  })

  idmap = env['BLUEFIN_TECS_MERCHANT_SERVICES_TEST_DIGITAL_SERVICES_API_ENTID']

  if ('TRUE' === env.BLUEFIN_TECS_MERCHANT_SERVICES_TEST_LIVE) {
    client = new BluefinTecsMerchantServicesSDK(merge([
      {
        apikey: env.BLUEFIN_TECS_MERCHANT_SERVICES_APIKEY,
      },
      extra
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
    now: Date.now(),
  }

  return setup
}
  
