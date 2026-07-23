(* Generated list_terminal entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "list_terminal.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.list_terminal client Noval in
      check_str "name" ent.e_name "list_terminal")
