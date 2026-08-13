# DigitalServicesApi entity test (offline, mock transport)

defmodule BluefinTecsMerchantServices.DigitalServicesApiEntityTest do
  use ExUnit.Case

  alias Voxgig.Struct, as: S
  alias BluefinTecsMerchantServices.Helpers, as: H
  alias BluefinTecsMerchantServices.Json

  defp fixture do
    Json.parse(File.read!("../.sdk/test/entity/digital_services_api/DigitalServicesApiTestData.json"))
  end

  defp mk_sdk do
    existing = H.or_(S.getpath(fixture(), "existing"), S.jm([]))
    BluefinTecsMerchantServices.test(S.jm(["entity", existing]))
  end

  defp first_id do
    existing = H.or_(S.getpath(fixture(), "existing.digital_services_api"), S.jm([]))
    keys = S.keysof(existing)
    if keys == [], do: nil, else: hd(keys)
  end

  test "should create instance" do
    sdk = BluefinTecsMerchantServices.test()
    ent = BluefinTecsMerchantServices.digital_services_api(sdk)
    assert ent != nil
  end

  test "should load an existing record" do
    id = first_id()

    if id != nil do
      sdk = mk_sdk()
      ent = BluefinTecsMerchantServices.digital_services_api(sdk)
      loaded = BluefinTecsMerchantServices.Entity.DigitalServicesApi.load(ent, S.jm(["id", id]))
      rec = BluefinTecsMerchantServices.EntityBase.data_get(loaded)
      assert S.ismap(rec)
      assert S.getprop(rec, "id") == id
    end
  end

  test "should create then read back" do
    sdk = BluefinTecsMerchantServices.test(S.jm(["entity", S.jm(["digital_services_api", S.jm([])])]))
    ent = BluefinTecsMerchantServices.digital_services_api(sdk)
    created = BluefinTecsMerchantServices.Entity.DigitalServicesApi.create(ent, S.jm(["name", "test-create"]))
    made = BluefinTecsMerchantServices.EntityBase.data_get(created)
    assert S.ismap(made)
    assert S.getprop(made, "id") != nil
  end
end
