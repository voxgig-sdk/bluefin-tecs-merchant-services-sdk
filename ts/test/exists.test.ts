
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { BluefinTecsMerchantServicesSDK } from '..'


describe('exists', async () => {

  test('test-mode', () => {
    const testsdk = BluefinTecsMerchantServicesSDK.test()
    equal(testsdk instanceof BluefinTecsMerchantServicesSDK, true,
      'BluefinTecsMerchantServicesSDK.test() must return a client synchronously')
  })

})
