(* Generated introduce_mandator entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "introduce_mandator.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.introduce_mandator client Noval in
      check_str "name" ent.e_name "introduce_mandator")
