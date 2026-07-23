(* Generated ec_data_ecom entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "ec_data_ecom.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.ec_data_ecom client Noval in
      check_str "name" ent.e_name "ec_data_ecom")
