open Printf
open Lexing

open Ast
exception Erro_Sintatico of string

module S = MenhirLib.General (* Streams *)
module I = Sintatico.MenhirInterpreter

open ErroSint
open Semantico
open Codigo
open Cod3End

let posicao lexbuf =
    let pos = lexbuf.lex_curr_p in
    let lin = pos.pos_lnum
    and col = pos.pos_cnum - pos.pos_bol - 1 in
    sprintf "linha %d, coluna %d" lin col

(* [pilha checkpoint] extrai a pilha do autômato LR(1) contida em checkpoint *)

let pilha checkpoint =
  match checkpoint with
  | I.HandlingError amb -> I.stack amb
  | _ -> assert false (* Isso não pode acontecer *)

let estado checkpoint : int =
  match Lazy.force (pilha checkpoint) with
  | S.Nil -> (* O parser está no estado inicial *)
     0
  | S.Cons (I.Element (s, _, _, _), _) ->
     I.number s

let sucesso v = Some v

let falha lexbuf (checkpoint : (Sast.expressao Ast.programa) I.checkpoint) =
  let estado_atual = estado checkpoint in
  let msg = message estado_atual in
  raise (Erro_Sintatico (Printf.sprintf "%d - %s.\n"
                                      (Lexing.lexeme_start lexbuf) msg))

let loop lexbuf resultado =
  let fornecedor = I.lexer_lexbuf_to_supplier Lexico.read lexbuf in
  I.loop_handle sucesso (falha lexbuf) fornecedor resultado


let parse_com_erro lexbuf =
  try
    Some (loop lexbuf (Sintatico.Incremental.prog lexbuf.lex_curr_p))
  with
  | Lexico.Erro msg ->
     printf "Erro lexico na %s:\n\t%s\n" (posicao lexbuf) msg;
     None
  | Erro_Sintatico msg ->
     printf "Erro sintático na %s %s\n" (posicao lexbuf) msg;
     None

let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = parse_com_erro lexbuf in
  ast

let parse_arq nome =
  let ic = open_in nome in
  let lexbuf = Lexing.from_channel ic in
  let ast = parse_com_erro lexbuf in
  let _ = close_in ic in
  ast

let verifica_tipos nome =
  let ast = parse_arq nome in
  match ast with
    Some (Some ast) -> semantico ast
  | _ -> failwith "Nada a fazer!\n"

let traduz nome =
  let (arv,tab) = verifica_tipos nome in
  tradutor arv

let imprime_traducao cod =
   let _ = printf "\n" in
   escreve_codigo cod


(* Para compilar:
     ocamlbuild -use-ocamlfind -use-menhir -menhir "menhir --table" -package menhirLib cod3endTest.byte
  
   Para usar, entre no ocaml 

     rlwrap ocaml

   e se desejar ver apenas a árvore sintática que sai do analisador sintático, digite

     parse_arq "exemplos/Tipos/ex8.tip";;

   Depois, para ver a saída do analisador semântico já com a árvore anotada com 
   o tipos, digite:

   verifica_tipos "exemplos/Tipos/ex8.tip";;

   Note que o analisador semântico está retornando também o ambiente global. Se 
   quiser separá-los, digite:

   let (arv, amb) = verifica_tipos "exemplos/Tipos/ex8.tip";;
   
   Para ver o código de 3 endereços:
   traduz "exemplos/Tipos/ex8.tip";;
   
   ou se quiser ver em um formato mais legível:
   
   let cod = traduz "exemplos/Tipos/ex8.tip" in imprime_traducao cod;;
   

    

 *)
