(* Generated ecr_data entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "ecr_data.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.ecr_data client Noval in
      check_str "name" ent.e_name "ecr_data")
