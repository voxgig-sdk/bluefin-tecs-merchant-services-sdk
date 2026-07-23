(* Generated pre_auth_transaction_completion entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "pre_auth_transaction_completion.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.pre_auth_transaction_completion client Noval in
      check_str "name" ent.e_name "pre_auth_transaction_completion")
