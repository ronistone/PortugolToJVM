
(* The type of tokens. *)

type token = 
  | WHILE of (Lexing.position)
  | VIRG of (Lexing.position)
  | VAR of (Lexing.position)
  | SWITCH of (Lexing.position)
  | SAIDA_LINHA of (Lexing.position)
  | SAIDA of (Lexing.position)
  | RETURN of (Lexing.position)
  | RESTO of (Lexing.position)
  | REAL of (Lexing.position)
  | PROGRAMA of (Lexing.position)
  | POTEN of (Lexing.position)
  | OR of (Lexing.position)
  | MULTI of (Lexing.position)
  | MENOS of (Lexing.position)
  | MAIS of (Lexing.position)
  | LTE of (Lexing.position)
  | LT of (Lexing.position)
  | LITSTRING of (string * Lexing.position)
  | LITREAL of (float * Lexing.position)
  | LITINT of (int * Lexing.position)
  | LITCHAR of (char * Lexing.position)
  | LITBOOL of (bool * Lexing.position)
  | INTEGER of (Lexing.position)
  | INI of (Lexing.position)
  | IF of (Lexing.position)
  | ID of (string * Lexing.position)
  | GTE of (Lexing.position)
  | GT of (Lexing.position)
  | FWHILE of (Lexing.position)
  | FUNCTION of (Lexing.position)
  | FSWITCH of (Lexing.position)
  | FPROGRAMA of (Lexing.position)
  | FPAR of (Lexing.position)
  | FOR of (Lexing.position)
  | FIF of (Lexing.position)
  | FFUNCTION of (Lexing.position)
  | FFOR of (Lexing.position)
  | EQUALS of (Lexing.position)
  | EOF
  | ENTRADA of (Lexing.position)
  | ENTAO of (Lexing.position)
  | END of (Lexing.position)
  | ELSE of (Lexing.position)
  | DO of (Lexing.position)
  | DIV of (Lexing.position)
  | DIFER of (Lexing.position)
  | DEF of (Lexing.position)
  | CASE_DEFAULT of (Lexing.position)
  | CASE of (Lexing.position)
  | CARACTER of (Lexing.position)
  | BOOL of (Lexing.position)
  | BEGIN of (Lexing.position)
  | ATRIB of (Lexing.position)
  | APAR of (Lexing.position)
  | AND of (Lexing.position)

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Sast.expressao Ast.programa)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val prog: Lexing.position -> (Sast.expressao Ast.programa) MenhirInterpreter.checkpoint
  
end
