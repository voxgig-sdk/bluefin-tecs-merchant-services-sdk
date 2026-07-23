(* Generated transactions_count_card_brand entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "transactions_count_card_brand.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.transactions_count_card_brand client Noval in
      check_str "name" ent.e_name "transactions_count_card_brand")
