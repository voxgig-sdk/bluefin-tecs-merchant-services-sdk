# DeactivateTerminal entity test (offline, mock transport)

defmodule BluefinTecsMerchantServices.DeactivateTerminalEntityTest do
  use ExUnit.Case

  alias Voxgig.Struct, as: S
  alias BluefinTecsMerchantServices.Helpers, as: H
  alias BluefinTecsMerchantServices.Json

  defp fixture do
    Json.parse(File.read!("../.sdk/test/entity/deactivate_terminal/DeactivateTerminalTestData.json"))
  end

  defp mk_sdk do
    existing = H.or_(S.getpath(fixture(), "existing"), S.jm([]))
    BluefinTecsMerchantServices.test(S.jm(["entity", existing]))
  end

  defp first_id do
    existing = H.or_(S.getpath(fixture(), "existing.deactivate_terminal"), S.jm([]))
    keys = S.keysof(existing)
    if keys == [], do: nil, else: hd(keys)
  end

  test "should create instance" do
    sdk = BluefinTecsMerchantServices.test()
    ent = BluefinTecsMerchantServices.deactivate_terminal(sdk)
    assert ent != nil
  end

  test "should create then read back" do
    sdk = BluefinTecsMerchantServices.test(S.jm(["entity", S.jm(["deactivate_terminal", S.jm([])])]))
    ent = BluefinTecsMerchantServices.deactivate_terminal(sdk)
    created = BluefinTecsMerchantServices.Entity.DeactivateTerminal.create(ent, S.jm(["name", "test-create"]))
    made = BluefinTecsMerchantServices.EntityBase.data_get(created)
    assert S.ismap(made)
    assert S.getprop(made, "id") != nil
  end
end
