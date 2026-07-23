(* Generated store_terminal_parameter entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "store_terminal_parameter.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.store_terminal_parameter client Noval in
      check_str "name" ent.e_name "store_terminal_parameter")
