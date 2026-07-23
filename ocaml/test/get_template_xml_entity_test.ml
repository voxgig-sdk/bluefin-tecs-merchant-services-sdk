(* Generated get_template_xml entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "get_template_xml.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.get_template_xml client Noval in
      check_str "name" ent.e_name "get_template_xml")
