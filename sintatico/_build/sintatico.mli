
(* The type of tokens. *)

type token = 
  | WHILE
  | VIRG
  | VAR
  | SWITCH
  | SAIDA_LINHA
  | SAIDA
  | RETURN
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
  | LITCHAR of (char)
  | LITBOOL of (bool)
  | INTEGER
  | INI
  | IF
  | ID of (string)
  | GTE
  | GT
  | FWHILE
  | FUNCTION
  | FSWITCH
  | FPROGRAMA
  | FPAR
  | FOR
  | FIF
  | FFUNCTION
  | FFOR
  | EQUALS
  | EOF
  | ENTRADA
  | ENTAO
  | END
  | ELSE
  | DO
  | DIV
  | DIFER
  | DEF
  | CASE_DEFAULT
  | CASE
  | CARACTER
  | BOOL
  | BEGIN
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
