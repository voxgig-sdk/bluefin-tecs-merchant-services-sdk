(* Generated check_card_black_listed entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "check_card_black_listed.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.check_card_black_listed client Noval in
      check_str "name" ent.e_name "check_card_black_listed")
