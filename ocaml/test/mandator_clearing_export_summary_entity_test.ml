(* Generated mandator_clearing_export_summary entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "mandator_clearing_export_summary.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.mandator_clearing_export_summary client Noval in
      check_str "name" ent.e_name "mandator_clearing_export_summary")
