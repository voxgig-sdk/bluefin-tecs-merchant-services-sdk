(* Generated status_transaction entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "status_transaction.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.status_transaction client Noval in
      check_str "name" ent.e_name "status_transaction")
