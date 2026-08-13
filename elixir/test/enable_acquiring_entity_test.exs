# EnableAcquiring entity test (offline, mock transport)

defmodule BluefinTecsMerchantServices.EnableAcquiringEntityTest do
  use ExUnit.Case

  alias Voxgig.Struct, as: S
  alias BluefinTecsMerchantServices.Helpers, as: H
  alias BluefinTecsMerchantServices.Json

  defp fixture do
    Json.parse(File.read!("../.sdk/test/entity/enable_acquiring/EnableAcquiringTestData.json"))
  end

  defp mk_sdk do
    existing = H.or_(S.getpath(fixture(), "existing"), S.jm([]))
    BluefinTecsMerchantServices.test(S.jm(["entity", existing]))
  end

  defp first_id do
    existing = H.or_(S.getpath(fixture(), "existing.enable_acquiring"), S.jm([]))
    keys = S.keysof(existing)
    if keys == [], do: nil, else: hd(keys)
  end

  test "should create instance" do
    sdk = BluefinTecsMerchantServices.test()
    ent = BluefinTecsMerchantServices.enable_acquiring(sdk)
    assert ent != nil
  end

  test "should create then read back" do
    sdk = BluefinTecsMerchantServices.test(S.jm(["entity", S.jm(["enable_acquiring", S.jm([])])]))
    ent = BluefinTecsMerchantServices.enable_acquiring(sdk)
    created = BluefinTecsMerchantServices.Entity.EnableAcquiring.create(ent, S.jm(["name", "test-create"]))
    made = BluefinTecsMerchantServices.EntityBase.data_get(created)
    assert S.ismap(made)
    assert S.getprop(made, "id") != nil
  end
end
