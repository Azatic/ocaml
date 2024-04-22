# 2 "asmcomp/riscv/arch.ml"
(**************************************************************************)
(*                                                                        *)
(*                                 OCaml                                  *)
(*                                                                        *)
(*                Nicolas Ojeda Bar <n.oje.bar@gmail.com>                 *)
(*                                                                        *)
(*   Copyright 2016 Institut National de Recherche en Informatique et     *)
(*     en Automatique.                                                    *)
(*                                                                        *)
(*   All rights reserved.  This file is distributed under the terms of    *)
(*   the GNU Lesser General Public License version 2.1, with the          *)
(*   special exception on linking described in the file LICENSE.          *)
(*                                                                        *)
(**************************************************************************)

(* Specific operations for the RISC-V processor *)

open Format

(* Machine-specific command-line options *)

let zbb_support = ref false
let thead_support = ref false
let command_line_options = ["-zbb", Arg.Set zbb_support, "Generate assembly code with zbb extention";
"-nozbb", Arg.Clear zbb_support, "Generate assembly code without zbb extention";
"-thead", Arg.Set thead_support, "Generate assembly code with thead extention";
  "-nothead", Arg.Clear thead_support, "Generate assembly code without thead extention"]
(* Specific operations *)

type specific_operation =
  | Imultaddf of bool        (* multiply, optionally negate, and add *)
  | Imultsubf of bool        (* multiply, optionally negate, and subtract *)
  | Ishiftaddi of int         (* shift and add *)
  | Ipopcounti of bool      (* counting the bits *)
  | Ivec_add
  | Ivector_add
  | Isimd_find
(* Addressing modes *)

type addressing_mode =
  | Iindexed of int                     (* reg + displ *)

let is_immediate n =
  (n <= 0x7FF) && (n >= -0x800)

(* Sizes, endianness *)

let big_endian = false

let size_addr = 8
let size_int = size_addr
let size_float = 8

let allow_unaligned_access = false

(* Behavior of division *)

let division_crashes_on_overflow = false

(* Operations on addressing modes *)

let identity_addressing = Iindexed 0

let offset_addressing addr delta =
  match addr with
  | Iindexed n -> Iindexed(n + delta)

let num_args_addressing = function
  | Iindexed _ -> 1

(* Printing operations and addressing modes *)

let print_addressing printreg addr ppf arg =
  match addr with
  | Iindexed n ->
      let idx = if n <> 0 then Printf.sprintf " + %i" n else "" in
      fprintf ppf "%a%s" printreg arg.(0) idx

      [@@@ocaml.warnerror "-27"]

let print_specific_operation printreg op ppf arg =
  match op with
  | Imultaddf false ->
      fprintf ppf "%a *f %a +f %a"
        printreg arg.(0) printreg arg.(1) printreg arg.(2)
  | Imultaddf true ->
      fprintf ppf "-f (%a *f %a +f %a)"
        printreg arg.(0) printreg arg.(1) printreg arg.(2)
  | Imultsubf false ->
      fprintf ppf "%a *f %a -f %a"
        printreg arg.(0) printreg arg.(1) printreg arg.(2)
  | Imultsubf true ->
      fprintf ppf "-f (%a *f %a -f %a)"
        printreg arg.(0) printreg arg.(1) printreg arg.(2)
  | Ishiftaddi n -> fprintf ppf "%a +f (%a *f (2 **f n%d))"
        printreg arg.(0) printreg arg.(1) n 
  | Ipopcounti t -> 
          fprintf ppf "popcounti %a"
            printreg arg.(0) 
  | Ivec_add -> fprintf ppf "asd" 
  | Ivector_add -> fprintf ppf "vector_add"
  | Isimd_find -> fprintf ppf "simd_find"
      
(* Specific operations that are pure *)

let operation_is_pure _ = true

(* Specific operations that can raise *)

let operation_can_raise _ = false
