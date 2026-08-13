# EcomParameter entity test (offline, mock transport)

defmodule BluefinTecsMerchantServices.EcomParameterEntityTest do
  use ExUnit.Case

  alias Voxgig.Struct, as: S
  alias BluefinTecsMerchantServices.Helpers, as: H
  alias BluefinTecsMerchantServices.Json

  defp fixture do
    Json.parse(File.read!("../.sdk/test/entity/ecom_parameter/EcomParameterTestData.json"))
  end

  defp mk_sdk do
    existing = H.or_(S.getpath(fixture(), "existing"), S.jm([]))
    BluefinTecsMerchantServices.test(S.jm(["entity", existing]))
  end

  defp first_id do
    existing = H.or_(S.getpath(fixture(), "existing.ecom_parameter"), S.jm([]))
    keys = S.keysof(existing)
    if keys == [], do: nil, else: hd(keys)
  end

  test "should create instance" do
    sdk = BluefinTecsMerchantServices.test()
    ent = BluefinTecsMerchantServices.ecom_parameter(sdk)
    assert ent != nil
  end

  test "should create then read back" do
    sdk = BluefinTecsMerchantServices.test(S.jm(["entity", S.jm(["ecom_parameter", S.jm([])])]))
    ent = BluefinTecsMerchantServices.ecom_parameter(sdk)
    created = BluefinTecsMerchantServices.Entity.EcomParameter.create(ent, S.jm(["name", "test-create"]))
    made = BluefinTecsMerchantServices.EntityBase.data_get(created)
    assert S.ismap(made)
    assert S.getprop(made, "id") != nil
  end
end
