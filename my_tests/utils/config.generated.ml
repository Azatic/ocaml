(* utils/config.generated.ml.  Generated from config.generated.ml.in by configure. *)
#2 "utils/config.generated.ml.in"
(**************************************************************************)
(*                                                                        *)
(*                                 OCaml                                  *)
(*                                                                        *)
(*             Xavier Leroy, projet Cristal, INRIA Rocquencourt           *)
(*                                                                        *)
(*   Copyright 1996 Institut National de Recherche en Informatique et     *)
(*     en Automatique.                                                    *)
(*                                                                        *)
(*   All rights reserved.  This file is distributed under the terms of    *)
(*   the GNU Lesser General Public License version 2.1, with the          *)
(*   special exception on linking described in the file LICENSE.          *)
(*                                                                        *)
(**************************************************************************)

(* This file is included in config_main.ml during the build rather
   than compiled on its own *)

let bindir = {|/usr/local/bin|}

let standard_library_default = {|/usr/local/lib/ocaml|}

let ccomp_type = {|cc|}
let c_compiler = {|gcc-13|}
let c_output_obj = {|-o |}
let c_has_debug_prefix_map = true
let as_has_debug_prefix_map = true
let ocamlc_cflags = {|-O2 -fno-strict-aliasing -fwrapv -pthread -fPIC |}
let ocamlc_cppflags = {| -D_FILE_OFFSET_BITS=64 |}
(* #7678: ocamlopt uses these only to compile .c files, and the behaviour for
          the two drivers should be identical. *)
let ocamlopt_cflags = {|-O2 -fno-strict-aliasing -fwrapv -pthread -fPIC |}
let ocamlopt_cppflags = {| -D_FILE_OFFSET_BITS=64 |}
let bytecomp_c_libraries = {| -lm  -lpthread|}
(* bytecomp_c_compiler and native_c_compiler have been supported for a
   long time and are retained for backwards compatibility.
   For programs that don't need compatibility with older OCaml releases
   the recommended approach is to use the constituent variables
   c_compiler, ocamlc_cflags, ocamlc_cppflags etc., directly.
*)
let bytecomp_c_compiler =
  c_compiler ^ " " ^ ocamlc_cflags ^ " " ^ ocamlc_cppflags
let native_c_compiler =
  c_compiler ^ " " ^ ocamlopt_cflags ^ " " ^ ocamlopt_cppflags
let native_c_libraries = {| -lm  -lpthread|}
let native_pack_linker = {|ld -r -o |}
let default_rpath = {|-Wl,-rpath,|}
let mksharedlibrpath = {|-Wl,-rpath,|}
let ar = {|ar|}
let supports_shared_libraries = true
let native_dynlink = true
let mkdll, mkexe, mkmaindll =
  if Sys.win32 || Sys.cygwin && supports_shared_libraries then
    let flexlink =
      let flexlink =
        Option.value ~default:"flexlink" (Sys.getenv_opt "OCAML_FLEXLINK")
      in
      let f i =
        let c = flexlink.[i] in
        if c = '/' && Sys.win32 then '\\' else c
      in
      String.init (String.length flexlink) f
    in
    let flexdll_chain = {||} in
    let flexlink_flags = {||} in
    let flags = " -chain " ^ flexdll_chain ^ " " ^ flexlink_flags in
    flexlink ^ flags ^ {| |},
    flexlink ^ " -exe" ^ flags
      ^ {| |} ^ {| -Wl,-E |},
    flexlink ^ " -maindll" ^ flags ^ {| |}
  else
    {|gcc-13 -shared  |},
    {|gcc-13 -O2 -fno-strict-aliasing -fwrapv -pthread   -Wl,-E |},
    {|gcc-13 -shared|}

let flambda = false
let with_flambda_invariants = false
let with_cmm_invariants = false
let windows_unicode = 0 != 0

let flat_float_array = true

let function_sections = false
let afl_instrument = false

let native_compiler = true

let architecture = {|riscv|}
let model = {|riscv64|}
let system = {|linux|}

let asm = {|as -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei_xtheadba|}
let asm_cfi_supported = true
let with_frame_pointers = false
let reserved_header_bits = 0

let ext_exe = {||}
let ext_obj = "." ^ {|o|}
let ext_asm = "." ^ {|s|}
let ext_lib = "." ^ {|a|}
let ext_dll = "." ^ {|so|}

let host = {|riscv64-unknown-linux-gnu|}
let target = {|riscv64-unknown-linux-gnu|}

let systhread_supported = false

let flexdll_dirs = []

let ar_supports_response_files = true
