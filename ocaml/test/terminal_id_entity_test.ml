(* Generated terminal_id entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "terminal_id.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.terminal_id client Noval in
      check_str "name" ent.e_name "terminal_id")
