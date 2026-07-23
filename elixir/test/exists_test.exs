defmodule BluefinTecsMerchantServices.ExistsTest do
  use ExUnit.Case

  test "should create test sdk" do
    testsdk = BluefinTecsMerchantServices.test()
    assert testsdk != nil
  end
end
