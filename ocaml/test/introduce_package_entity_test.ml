(* Generated introduce_package entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "introduce_package.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.introduce_package client Noval in
      check_str "name" ent.e_name "introduce_package")
