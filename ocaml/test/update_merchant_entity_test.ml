(* Generated update_merchant entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "update_merchant.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.update_merchant client Noval in
      check_str "name" ent.e_name "update_merchant")
