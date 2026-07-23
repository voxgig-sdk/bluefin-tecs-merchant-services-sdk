(* Generated ecom_parameter entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "ecom_parameter.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.ecom_parameter client Noval in
      check_str "name" ent.e_name "ecom_parameter")
