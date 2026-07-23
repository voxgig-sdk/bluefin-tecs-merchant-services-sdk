(* Generated report_data entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "report_data.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.report_data client Noval in
      check_str "name" ent.e_name "report_data")
