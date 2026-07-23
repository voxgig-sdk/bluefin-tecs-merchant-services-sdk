(* Generated register_terminal entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "register_terminal.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.register_terminal client Noval in
      check_str "name" ent.e_name "register_terminal")
