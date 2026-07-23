(* Generated register_tecs_company entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "register_tecs_company.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.register_tecs_company client Noval in
      check_str "name" ent.e_name "register_tecs_company")
