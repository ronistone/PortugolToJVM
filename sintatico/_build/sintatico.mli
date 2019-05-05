
(* The type of tokens. *)

type token = 
  | WHILE
  | VIRG
  | VAR
  | SAIDA
  | RESTO
  | REAL
  | PROGRAMA
  | POTEN
  | OR
  | MULTI
  | MENOS
  | MAIS
  | LTE
  | LT
  | LITSTRING of (string)
  | LITINT of (int)
  | INTEGER
  | INI
  | IF
  | ID of (string)
  | GTE
  | GT
  | FWHILE
  | FUNCTION
  | FPROGRAMA
  | FPAR
  | FIF
  | FFUNCTION
  | EQUALS
  | EOF
  | ENTRADA
  | ENTAO
  | ELSE
  | DO
  | DIV
  | DIFER
  | DEF
  | CARACTER
  | ATRIB
  | APAR
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.programa)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val prog: Lexing.position -> (Ast.programa) MenhirInterpreter.checkpoint
  
end
