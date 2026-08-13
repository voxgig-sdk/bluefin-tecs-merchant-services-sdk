(* Generated digital_services_api entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "digital_services_api.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.digital_services_api client Noval in
      check_str "name" ent.e_name "digital_services_api")

let () =
  test "digital_services_api.seeded_ops" (fun () ->
      let record = jo [("id", Str "digital_services_api01")] in
      let seed = jo [("digital_services_api",
                      jo [("digital_services_api01", record)])] in
      let client = Sdk_client.test_with (jo [("entity", seed)]) Noval in
      let ent = Sdk_client.digital_services_api client Noval in
      ignore ent;
      let loaded = ent.e_load (jo [("id", Str "digital_services_api01")]) Noval in
      let loaded_data = loaded.e_data_get () in
      check "load data is a map" (ismap loaded_data);
      ())
