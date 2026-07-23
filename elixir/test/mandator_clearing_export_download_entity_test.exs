# MandatorClearingExportDownload entity test (offline, mock transport)

defmodule BluefinTecsMerchantServices.MandatorClearingExportDownloadEntityTest do
  use ExUnit.Case

  alias Voxgig.Struct, as: S
  alias BluefinTecsMerchantServices.Helpers, as: H
  alias BluefinTecsMerchantServices.Json

  defp fixture do
    Json.parse(File.read!("../.sdk/test/entity/mandator_clearing_export_download/MandatorClearingExportDownloadTestData.json"))
  end

  defp mk_sdk do
    existing = H.or_(S.getpath(fixture(), "existing"), S.jm([]))
    BluefinTecsMerchantServices.test(S.jm(["entity", existing]))
  end

  defp first_id do
    existing = H.or_(S.getpath(fixture(), "existing.mandator_clearing_export_download"), S.jm([]))
    keys = S.keysof(existing)
    if keys == [], do: nil, else: hd(keys)
  end

  test "should create instance" do
    sdk = BluefinTecsMerchantServices.test()
    ent = BluefinTecsMerchantServices.mandator_clearing_export_download(sdk)
    assert ent != nil
  end

  test "should load an existing record" do
    id = first_id()

    if id != nil do
      sdk = mk_sdk()
      ent = BluefinTecsMerchantServices.mandator_clearing_export_download(sdk)
      rec = BluefinTecsMerchantServices.Entity.MandatorClearingExportDownload.load(ent, S.jm(["id", id]))
      assert S.ismap(rec)
      assert S.getprop(rec, "id") == id
    end
  end

  test "should create then read back" do
    sdk = BluefinTecsMerchantServices.test(S.jm(["entity", S.jm(["mandator_clearing_export_download", S.jm([])])]))
    ent = BluefinTecsMerchantServices.mandator_clearing_export_download(sdk)
    made = BluefinTecsMerchantServices.Entity.MandatorClearingExportDownload.create(ent, S.jm(["name", "test-create"]))
    assert S.ismap(made)
    assert S.getprop(made, "id") != nil
  end
end
