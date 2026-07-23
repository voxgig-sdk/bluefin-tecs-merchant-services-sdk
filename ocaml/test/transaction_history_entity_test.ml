(* Generated transaction_history entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "transaction_history.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.transaction_history client Noval in
      check_str "name" ent.e_name "transaction_history")
