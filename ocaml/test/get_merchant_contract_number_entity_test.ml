(* Generated get_merchant_contract_number entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "get_merchant_contract_number.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.get_merchant_contract_number client Noval in
      check_str "name" ent.e_name "get_merchant_contract_number")
