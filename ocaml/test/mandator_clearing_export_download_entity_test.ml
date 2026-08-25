(* Generated mandator_clearing_export_download entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "mandator_clearing_export_download.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.mandator_clearing_export_download client Noval in
      check_str "name" ent.e_name "mandator_clearing_export_download")

let () =
  test "mandator_clearing_export_download.seeded_ops" (fun () ->
      let record = jo [("id", Str "mandator_clearing_export_download01")] in
      let seed = jo [("mandator_clearing_export_download",
                      jo [("mandator_clearing_export_download01", record)])] in
      let client = Sdk_client.test_with (jo [("entity", seed)]) Noval in
      let ent = Sdk_client.mandator_clearing_export_download client Noval in
      ignore ent;
      let loaded = ent.e_load (jo [("id", Str "mandator_clearing_export_download01")]) Noval in
      let loaded_data = loaded.e_data_get () in
      check "load data is a map" (ismap loaded_data);
      check_vstr "load id" (getp loaded_data "id") "mandator_clearing_export_download01";
      ())
