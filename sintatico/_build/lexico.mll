{
  open Lexing
  open Printf
  open Sintatico

  exception Erro of string
  
  let incr_num_linha lexbuf = 
    let pos = lexbuf.lex_curr_p in
     lexbuf.lex_curr_p <- { pos with
        pos_lnum = pos.pos_lnum + 1;
        pos_bol = pos.pos_cnum;
     }

  let msg_erro lexbuf c =
    let pos = lexbuf.lex_curr_p in
    let lin = pos.pos_lnum
    and col = pos.pos_cnum - pos.pos_bol - 1 in
    sprintf "%d-%d: caracter desconhecido %c" lin col c

  let erro lin col msg =
    let mensagem = sprintf "%d-%d: %s" lin col msg in
       failwith mensagem

(* type tokens = APAR
            | FPAR
            | ATRIB
            | IF
            | ELSE
            | WHILE
            | EQUALS
            | GTE
            | GT
            | LTE
            | LT
            | DIV
            | MULTI
            | POTEN
            | RESTO
            | MAIS
            | MENOS
            | DOT
            | VIRG
            | AND
            | OR
            | DEF
            | VAR
            | INCLUDE
            | INTEGER
            | CARACTER
            | REAL
            | FUNCTION
            | PROGRAMA
            | FPROGRAMA
            | DO
            | FIF
            | ENTAO
            | ACHAVE
            | FCHAVE
            | LITINT of int
            | LITSTRING of string
            | ID of string
            | EOF
            | INI *)
} 

let digito = ['0' - '9']
let inteiro = digito+

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = ('_' | letra) ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "//" [^ '\r' '\n' ]*

rule read = parse
  brancos    { read lexbuf }
| novalinha  { incr_num_linha lexbuf; read lexbuf }
| comentario { read lexbuf }
| "/*"       { comentario_bloco 0 lexbuf }
| '('        { APAR }
| '+'        { MAIS }
| '-'        { MENOS }
| '/'        { DIV }
| '*'        { MULTI }
| '%'        { RESTO }
| '^'        { POTEN }
| ':'        { DEF }
| ')'        { FPAR }
| "<-"       { ATRIB }
| "var"      { VAR }
| "="        { EQUALS }
| "<>"       { DIFER }
| ">="       { GTE }
| "<="       { LTE }
| '>'        { GT }
| '<'        { LT }
(* | '.'        { DOT } *)
| ','        { VIRG }
| inteiro as num { let numero = int_of_string num in 
                    LITINT numero  } 
| "e"         { AND }
| "ou"        { OR }
| "se"        { IF }
| "então"     { ENTAO }
| "senão"     { ELSE }
| "fim_se"    { FIF }
| "início"    { INI }
| "faça"      { DO }
| "fim_enquanto" { FWHILE }
| "enquanto"  { WHILE }
| "algoritmo" { PROGRAMA }
| "fim_algoritmo" { FPROGRAMA }
| "escreva"   { SAIDA }
| "leia"      { ENTRADA }
| "fim_procedimento"    { FFUNCTION }
| "procedimento"    { FUNCTION }
| "inteiro"   { INTEGER }
| "real"   { REAL }
| identificador as id { ID id }
| '"'        { let pos = lexbuf.lex_curr_p in
               let lin = pos.pos_lnum
               and col = pos.pos_cnum - pos.pos_bol - 1 in
               let buffer = Buffer.create 1 in 
               let str = leia_string lin col buffer lexbuf in
                 LITSTRING str }
| _ as c  { failwith (msg_erro lexbuf c) }
| eof        { EOF }

and comentario_bloco n = parse
   "*/"      { if n=0 then read lexbuf 
               else comentario_bloco (n-1) lexbuf }
| "/*"       { comentario_bloco (n+1) lexbuf }
| novalinha  { incr_num_linha lexbuf; comentario_bloco n lexbuf }
| _          { comentario_bloco n lexbuf }
| eof        { let pos = lexbuf.lex_curr_p in 
               let lin = pos.pos_lnum
               and col = pos.pos_cnum - pos.pos_bol in
                erro lin col  "Comentario nao fechado" }

and leia_string lin col buffer = parse
   '"'     { Buffer.contents buffer}
| "\\t"    { Buffer.add_char buffer '\t'; leia_string lin col buffer lexbuf }
| "\\n"    { Buffer.add_char buffer '\n'; leia_string lin col buffer lexbuf }
| '\\' '"'  { Buffer.add_char buffer '"'; leia_string lin col buffer lexbuf }
| '\\' '\\' { Buffer.add_char buffer '\\'; leia_string lin col buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string lin col buffer lexbuf }
| eof      { erro lin col "A string nao foi fechada"}



