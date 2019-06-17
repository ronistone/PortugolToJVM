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

  let pos_atual lexbuf = lexbuf.lex_start_p

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
let real = digito+ '.' digito+

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
| '('        { APAR (pos_atual lexbuf) }
| '+'        { MAIS (pos_atual lexbuf) }
| '-'        { MENOS (pos_atual lexbuf) }
| '/'        { DIV (pos_atual lexbuf) }
| '*'        { MULTI (pos_atual lexbuf) }
| '%'        { RESTO (pos_atual lexbuf) }
| '^'        { POTEN (pos_atual lexbuf) }
| ':'        { DEF (pos_atual lexbuf) }
| ')'        { FPAR (pos_atual lexbuf) }
| "<-"       { ATRIB (pos_atual lexbuf) }
| "var"      { VAR (pos_atual lexbuf) }
| "="        { EQUALS (pos_atual lexbuf) }
| "<>"       { DIFER (pos_atual lexbuf) }
| ">="       { GTE (pos_atual lexbuf) }
| "<="       { LTE (pos_atual lexbuf) }
| '>'        { GT (pos_atual lexbuf) }
| '<'        { LT (pos_atual lexbuf) }
| ','        { VIRG (pos_atual lexbuf) }
| real as num    { let numero = float_of_string num in
                    LITREAL (numero, pos_atual lexbuf) }
| inteiro as num { let numero = int_of_string num in 
                    LITINT (numero, pos_atual lexbuf)  } 
| "e"         { AND (pos_atual lexbuf) }
| "E"         { AND (pos_atual lexbuf) }
| "ou"        { OR (pos_atual lexbuf) }
| "OU"        { OR (pos_atual lexbuf) }
| "se"        { IF (pos_atual lexbuf) }
| "então"     { ENTAO (pos_atual lexbuf) }
| "senão"     { ELSE (pos_atual lexbuf) }
| "fim_se"    { FIF (pos_atual lexbuf) }
| "início"    { INI (pos_atual lexbuf) }
| "faça"      { DO (pos_atual lexbuf) }
| "fim_para"  { FFOR (pos_atual lexbuf) }
| "para"      { FOR (pos_atual lexbuf) }
| "de"        { BEGIN (pos_atual lexbuf) }
| "até"       { END (pos_atual lexbuf) }
| "fim_enquanto" { FWHILE (pos_atual lexbuf) }
| "enquanto"  { WHILE (pos_atual lexbuf) }
| "escolha"   { SWITCH (pos_atual lexbuf) }
| "fim_escolha" { FSWITCH (pos_atual lexbuf) }
| "caso"      { CASE (pos_atual lexbuf) }
| "outrocaso" { CASE_DEFAULT (pos_atual lexbuf) }
| "algoritmo" { PROGRAMA (pos_atual lexbuf) }
| "fim_algoritmo" { FPROGRAMA (pos_atual lexbuf) }
| "escreva"   { SAIDA (pos_atual lexbuf) }
| "escreval"  { SAIDA_LINHA (pos_atual lexbuf) }
| "leia"      { ENTRADA (pos_atual lexbuf) }
| "fim_função"    { FFUNCTION (pos_atual lexbuf) }
| "retorne"   { RETURN (pos_atual lexbuf) }
| "função"    { FUNCTION (pos_atual lexbuf) }
| "inteiro"   { INTEGER (pos_atual lexbuf) }
| "real"      { REAL (pos_atual lexbuf) }
| "caractere" { CARACTER (pos_atual lexbuf) }
| "lógico"    { BOOL (pos_atual lexbuf) }
| "verdadeiro" { LITBOOL(true, pos_atual lexbuf ) }
| "falso"     { LITBOOL(false, pos_atual lexbuf ) }
| identificador as id { ID (id, pos_atual lexbuf)  }
| "'"_"'" as s  { let c = String.get s 1 in LITCHAR (c, pos_atual lexbuf ) }
| '"'        { let pos = lexbuf.lex_curr_p in
               let lin = pos.pos_lnum
               and col = pos.pos_cnum - pos.pos_bol - 1 in
               let buffer = Buffer.create 1 in 
               let str = leia_string lin col buffer lexbuf in
                 LITSTRING (str, pos_atual lexbuf) }
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



