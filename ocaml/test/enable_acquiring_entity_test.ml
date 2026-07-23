(* Generated enable_acquiring entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "enable_acquiring.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.enable_acquiring client Noval in
      check_str "name" ent.e_name "enable_acquiring")
