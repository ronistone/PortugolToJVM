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
| "E"         { AND }
| "ou"        { OR }
| "OU"        { OR }
| "se"        { IF }
| "então"     { ENTAO }
| "senão"     { ELSE }
| "fim_se"    { FIF }
| "início"    { INI }
| "faça"      { DO }
| "fim_para"  { FFOR }
| "para"      { FOR }
| "de"        { BEGIN }
| "até"       { END }
| "fim_enquanto" { FWHILE }
| "enquanto"  { WHILE }
| "escolha"   { SWITCH }
| "fim_escolha" { FSWITCH }
| "caso"      { CASE }
| "outrocaso" { CASE_DEFAULT }
| "algoritmo" { PROGRAMA }
| "fim_algoritmo" { FPROGRAMA }
| "escreva"   { SAIDA }
| "escreval"  { SAIDA_LINHA }
| "leia"      { ENTRADA }
| "fim_função"    { FFUNCTION }
| "retorne"   { RETURN }
| "função"    { FUNCTION }
| "inteiro"   { INTEGER }
| "real"      { REAL }
| "caractere" { CARACTER }
| "lógico"    { BOOL }
| "verdadeiro" { LITBOOL(true) }
| "falso"     { LITBOOL(false) }
| identificador as id { ID id }
| "'"_"'" as s  { let c = String.get s 1 in LITCHAR (c) }
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



