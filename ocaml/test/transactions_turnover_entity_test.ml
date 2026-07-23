(* Generated transactions_turnover entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "transactions_turnover.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.transactions_turnover client Noval in
      check_str "name" ent.e_name "transactions_turnover")
