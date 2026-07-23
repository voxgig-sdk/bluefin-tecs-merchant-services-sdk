(* Generated create_product entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "create_product.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.create_product client Noval in
      check_str "name" ent.e_name "create_product")
