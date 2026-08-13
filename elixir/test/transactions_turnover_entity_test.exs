# TransactionsTurnover entity test (offline, mock transport)

defmodule BluefinTecsMerchantServices.TransactionsTurnoverEntityTest do
  use ExUnit.Case

  alias Voxgig.Struct, as: S
  alias BluefinTecsMerchantServices.Helpers, as: H
  alias BluefinTecsMerchantServices.Json

  defp fixture do
    Json.parse(File.read!("../.sdk/test/entity/transactions_turnover/TransactionsTurnoverTestData.json"))
  end

  defp mk_sdk do
    existing = H.or_(S.getpath(fixture(), "existing"), S.jm([]))
    BluefinTecsMerchantServices.test(S.jm(["entity", existing]))
  end

  defp first_id do
    existing = H.or_(S.getpath(fixture(), "existing.transactions_turnover"), S.jm([]))
    keys = S.keysof(existing)
    if keys == [], do: nil, else: hd(keys)
  end

  test "should create instance" do
    sdk = BluefinTecsMerchantServices.test()
    ent = BluefinTecsMerchantServices.transactions_turnover(sdk)
    assert ent != nil
  end

  test "should create then read back" do
    sdk = BluefinTecsMerchantServices.test(S.jm(["entity", S.jm(["transactions_turnover", S.jm([])])]))
    ent = BluefinTecsMerchantServices.transactions_turnover(sdk)
    created = BluefinTecsMerchantServices.Entity.TransactionsTurnover.create(ent, S.jm(["name", "test-create"]))
    made = BluefinTecsMerchantServices.EntityBase.data_get(created)
    assert S.ismap(made)
    assert S.getprop(made, "id") != nil
  end
end
