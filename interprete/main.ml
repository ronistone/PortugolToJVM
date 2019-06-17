

let parse s =
    let lexbuf = Lexing.from_string s in
    Sintatico.prog Lexico.read lexbuf;;

let parsebuf lexbuf = Sintatico.prog Lexico.read lexbuf;;

let rec tokens lexbuf =
  let tok = Lexico.read lexbuf in
  match tok with
  | Sintatico.EOF -> [Sintatico.EOF]
  | _ -> tok :: tokens lexbuf
;;

let lexico str =
  let lexbuf = Lexing.from_string str in
  tokens lexbuf
;;

let lexicoArq arq =
  let ic = open_in arq in
  let lexbuf = Lexing.from_channel ic in
  let toks = tokens lexbuf in
  let _ = close_in ic in
  toks
;;

let lex arq =
  let ic = open_in arq in
  let lexbuf = Lexing.from_channel ic in
  let toks = parsebuf lexbuf in
  let _ = close_in ic in
  toks;