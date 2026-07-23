(* Generated payment_sred entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "payment_sred.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.payment_sred client Noval in
      check_str "name" ent.e_name "payment_sred")
