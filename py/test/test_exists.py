# BluefinTecsMerchantServices SDK exists test

import pytest
from bluefintecsmerchantservices_sdk import BluefinTecsMerchantServicesSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = BluefinTecsMerchantServicesSDK.test(None, None)
        assert testsdk is not None
