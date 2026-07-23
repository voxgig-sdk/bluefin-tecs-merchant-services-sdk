(* Generated update_template_xml entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "update_template_xml.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.update_template_xml client Noval in
      check_str "name" ent.e_name "update_template_xml")
