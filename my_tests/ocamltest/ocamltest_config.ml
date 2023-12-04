(* ocamltest/ocamltest_config.ml.  Generated from ocamltest_config.ml.in by configure. *)
#2 "ocamltest/ocamltest_config.ml.in"
(**************************************************************************)
(*                                                                        *)
(*                                 OCaml                                  *)
(*                                                                        *)
(*             Sebastien Hinderer, projet Gallium, INRIA Paris            *)
(*                                                                        *)
(*   Copyright 2016 Institut National de Recherche en Informatique et     *)
(*     en Automatique.                                                    *)
(*                                                                        *)
(*   All rights reserved.  This file is distributed under the terms of    *)
(*   the GNU Lesser General Public License version 2.1, with the          *)
(*   special exception on linking described in the file LICENSE.          *)
(*                                                                        *)
(**************************************************************************)

(* The configuration module for ocamltest *)

let arch = {|riscv|}

let afl_instrument = false

let asm = {|as -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei_xtheadba|}

let cc = {|gcc-13|}

let cflags = {|-O2 -fno-strict-aliasing -fwrapv -pthread -g -Wall -Wint-conversion -Wstrict-prototypes -Wold-style-definition -Werror -fno-common -fexcess-precision=standard -Wvla|}

let ccomptype = {|cc|}

let diff = {||}
let diff_flags = {||}

let shared_libraries = true

let libunix = None

let systhreads = false

let str = false

let objext = {|o|}

let libext = {|a|}

let asmext = {|s|}

let system = {|linux|}

let c_preprocessor = {|gcc-13 -E -P|}

let ocamlsrcdir = {|/home/debian/mnt/ocaml|}

let flambda = false

let ocamlc_default_flags = ""
let ocamlopt_default_flags = ""

let flat_float_array = true

let ocamldoc = false

let ocamldebug = false

let native_compiler = true

let native_dynlink = true

let shared_library_cflags = {|-fPIC|}

let sharedobjext = {|so|}

let csc = {||}

let csc_flags = {||}

let exe = {||}

let mkdll = {|gcc-13 -shared  |}
let mkexe = {|gcc-13 -O2 -fno-strict-aliasing -fwrapv -pthread   -Wl,-E |}

let bytecc_libs = {| -lm  -lpthread|}

let nativecc_libs = {| -lm  -lpthread|}

let windows_unicode = 0 != 0

let function_sections = false

let instrumented_runtime = true

let frame_pointers = false
