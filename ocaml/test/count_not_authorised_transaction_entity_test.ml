(* Generated count_not_authorised_transaction entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "count_not_authorised_transaction.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.count_not_authorised_transaction client Noval in
      check_str "name" ent.e_name "count_not_authorised_transaction")
