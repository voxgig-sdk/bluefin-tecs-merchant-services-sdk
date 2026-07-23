# BluefinTecsMerchantServices SDK exists test

require "minitest/autorun"
require_relative "../BluefinTecsMerchantServices_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = BluefinTecsMerchantServicesSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
