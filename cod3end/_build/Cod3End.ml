open Printf

open Ast
open Tast
open Codigo

let conta_temp = ref 0
let conta_rotulos = ref (Hashtbl.create 5)

let zera_contadores () =
  begin
    conta_temp := 0;
    conta_rotulos := Hashtbl.create 5
  end
  
let novo_temp () =
   let numero = !conta_temp in
   let _ = incr conta_temp in
   Temp numero
   
let novo_rotulo prefixo =
  if Hashtbl.mem !conta_rotulos prefixo
  then
     let numero = Hashtbl.find !conta_rotulos prefixo in
     let _ = Hashtbl.replace !conta_rotulos prefixo (numero + 1) in
     Rotulo (prefixo ^ (string_of_int numero))     
  else
     let _ = Hashtbl.add !conta_rotulos prefixo 1 in
     Rotulo (prefixo ^ "0")

(* Codigo para impressão *)

let endr_to_str = function
   | Nome s -> s
   | ConstInt n -> string_of_int n
   | ConstReal n -> string_of_float n
   | ConstString s -> s
   | ConstChar c -> String.make 1 c
   | ConstBool b -> string_of_bool b
   | Temp n  -> "t" ^ string_of_int n

let tipo_to_str t =
    match t with
      TipoInt -> "inteiro"
    | TipoString -> "string"
    | TipoBool -> "bool"
    | TipoVoid -> "void"
    | TipoReal -> "real"

let op_to_str op = 
  match op with
  | Mais  -> "+"
  | Menos -> "-"
  | Mult  -> "*"
  | Div   -> "/"
  | Resto   -> "%"
  | Potencia   -> "^"
  | Menor -> "<"
  | Igual -> "="
  | Difer -> "!="
  | Maior -> ">"
  | MaioIgual -> ">="
  | MenorIgual -> "<="
  | E     -> "&&"
  | Ou    -> "||"
  | Concat -> "^"

let rec args_to_str ats =
   match ats with
   | [] -> ""
   | [(a,t)] -> 
     let str = sprintf "(%s,%s)" (endr_to_str a) (tipo_to_str t) in
     str
   | (a,t) :: ats -> 
     let str = sprintf "(%s,%s)" (endr_to_str a) (tipo_to_str t) in
     str ^ ", " ^ args_to_str ats
  
let rec escreve_cod3 c =
  match c with
  | AtribBin (x,y,op,z) -> 
      sprintf "%s := %s %s %s\n" (endr_to_str x) 
                                (endr_to_str y) (op_to_str (fst op)) (endr_to_str z)
  | AtribUn (x,op,y) ->
      sprintf "%s := %s %s\n" (endr_to_str x) (op_to_str (fst op)) (endr_to_str y)
  | Copia (x,y) ->
      sprintf "%s := %s\n" (endr_to_str x) (endr_to_str y)
  | Goto l ->
      sprintf "goto %s\n" (escreve_cod3 l)
  | If (x,l) -> 
      sprintf "if %s goto %s\n" (endr_to_str x) (escreve_cod3 l)
  | IfFalse (x,l) -> 
      sprintf "ifFalse %s goto %s\n" (endr_to_str x) (escreve_cod3 l)
  | IfRelgoto (x,oprel,y,l) -> 
      sprintf "if %s %s %s goto %s\n" (endr_to_str x) (op_to_str (fst oprel)) 
                                     (endr_to_str y) (escreve_cod3 l)
  | Call (p,ats,t) -> sprintf "call %s(%s): %s\n" p (args_to_str ats) (tipo_to_str t)
  | Recebe (x,t) -> sprintf "recebe %s,%s\n" x (tipo_to_str t)
  | Local (x,t)  -> sprintf "local %s,%s\n" x (tipo_to_str t)
  | Global (x,t) -> sprintf "global %s,%s\n" x (tipo_to_str t)
  | CallFn (x,p,ats,t) -> 
      sprintf "%s := call %s(%s): %s\n" (endr_to_str x) p (args_to_str ats) (tipo_to_str t)
  | Return x -> sprintf "return %s\n" (endr_to_str x)
  | BeginFun (id,np,nl) -> sprintf "beginFun %s(%d,%d)\n" id np nl
  | EndFun -> "endFun\n\n"
  | Rotulo r -> sprintf "%s: " r


let rec escreve_codigo cod =
  match cod with
  | [] -> printf "\n"
  | c::cs -> printf "%s" (escreve_cod3 c); 
             escreve_codigo cs 

(* Código do tradutor para código de 3 endereço *)

let obtem_nome_tipo_var exp = 
  (
    match exp with
    | ExpVar (v,tipo) ->
      (match v with
        | VarSimples (nome,_) -> (nome,tipo)
      )
    | _ -> failwith "obtem_nome_tipo_var: nao eh variavel"
  )
let pega_nome_var var = 
  (
    match var with
      | VarSimples (nome,_) -> nome
  )

let pega_tipo exp = 
  match exp with
  | ExpVar (v, t) -> t
  | ExpInt (n, t) -> t
  | ExpString (s, t) -> t
  | ExpChar (c, t) -> t
  | ExpBool (b, t) -> t
  | ExpReal (r, t) -> t
  | ExpFuncao (id, args, t) -> t
  | ExpOp ((op,t),_,_) -> t
  | ExpVoid -> TipoVoid


let rec traduz_exp exp =
  match exp with
  | ExpInt (n, TipoInt) -> 
     let t = novo_temp () in
    (t, [Copia (t, ConstInt n)])
  | ExpString (n, TipoString) -> 
     let t = novo_temp () in
    (t, [Copia (t, ConstString n)])
  | ExpChar  (n, TipoString) -> 
     let t = novo_temp () in
    (t, [Copia (t, ConstChar n)])
  | ExpBool  (n, TipoBool) -> 
     let t = novo_temp () in
    (t, [Copia (t, ConstBool n)])
  | ExpReal  (n, TipoReal) -> 
     let t = novo_temp () in
    (t, [Copia (t, ConstReal n)])
  | ExpVar (v, tipo) ->
    (match v with
       VarSimples nome ->
       let id = fst nome in
       ((Nome id), [])
    )
  | ExpOp (op, exp1, exp2) ->
    let (endr1, codigo1) = let (e1,t1) = exp1 in traduz_exp e1
    and (endr2, codigo2) = let (e2,t2) = exp2 in traduz_exp e2
    and t = novo_temp () in
    let codigo = codigo1 @ codigo2 @ [AtribBin (t, endr1, op, endr2)] in
    (t, codigo)   
  | ExpFuncao (id, args, tipo_fn) ->
      let (enderecos, codigos) = List.split (List.map traduz_exp args) in
      let tipos = List.map pega_tipo args in
      let endr_tipos = List.combine enderecos tipos  
      and t = novo_temp () in 
      let codigo = (List.concat codigos) @
                   [CallFn (t, id, endr_tipos, tipo_fn)]
      in
        (t, codigo)
  | _ -> failwith "traduz_exp: não implementado"

and traduz_cmd cmd =
  match cmd with
    CmdReturn exp ->
      let (endr_exp, codigo_exp) = traduz_exp exp in
      codigo_exp @ [Return (endr_exp)]
  | CmdSe (teste, entao, senao) ->
    let (endr_teste, codigo_teste) = traduz_exp teste 
    and codigo_entao = traduz_cmds entao 
    and rotulo_falso = novo_rotulo "L" in
    (match senao with
        | None -> codigo_teste @ 
                  [IfFalse (endr_teste, rotulo_falso)] @
                  codigo_entao @ 
                  [rotulo_falso]
        | Some cmds -> 
          let codigo_senao = traduz_cmds cmds 
          and rotulo_fim = novo_rotulo "L" in
              codigo_teste @ 
              [IfFalse (endr_teste, rotulo_falso)] @
              codigo_entao @ 
              [Goto rotulo_fim] @
              [rotulo_falso] @ codigo_senao @
              [rotulo_fim]
    )

  | CmdAtrib (elem, exp) ->
    let (endr_exp, codigo_exp) = traduz_exp exp 
    and id = pega_nome_var elem in
    let codigo = codigo_exp @ [Copia (Nome id, endr_exp)] 
    in codigo

  | CmdChamada (ExpFuncao (id, args, tipo_fn)) -> 
      let (enderecos, codigos) = List.split (List.map traduz_exp args) in
      let tipos = List.map pega_tipo args in
      let endr_tipos = List.combine enderecos tipos in
      (List.concat codigos) @
      [Call (id, endr_tipos, tipo_fn)]
  | CmdEntrada args -> 
      let (enderecos, codigos) = List.split (List.map traduz_exp args) in
      let tipos = List.map pega_tipo args in
      let endr_tipos = List.combine enderecos tipos in
      (List.concat codigos) @
      [Call ("read", endr_tipos, TipoVoid)]

  | CmdSaida args -> 
      let (enderecos, codigos) = List.split (List.map traduz_exp args) in
      let tipos = List.map pega_tipo args in
      let endr_tipos = List.combine enderecos tipos in
      (List.concat codigos) @
      [Call ("print", endr_tipos, TipoVoid)]
  | CmdSaidaLine args -> 
      let (enderecos, codigos) = List.split (List.map traduz_exp args) in
      let tipos = List.map pega_tipo args in
      let endr_tipos = List.combine enderecos tipos in
      (List.concat codigos) @
      [Call ("print_line", endr_tipos, TipoVoid)]
     
  | CmdFor( variavel, inicio, fim, comandos ) ->
      let t = novo_temp()
      and tIncremento = novo_temp()
      and (end_inicio, codigo_inicio) = traduz_exp inicio
      and (end_fim, codigo_fim) = traduz_exp fim
      and corpo = traduz_cmds comandos
      and id = pega_nome_var variavel
      and tipo = pega_tipo inicio
      and rotulo_for = novo_rotulo "R" 
      and rotulo_fim = novo_rotulo "R" 
      and rotulo_decrementa = novo_rotulo "R" 
      and rotulo_inicio_for = novo_rotulo "R" in
      let incremento = 
        (
          match tipo with
            | TipoInt -> ConstInt 1
            | TipoReal -> ConstReal 1.0
            | _ -> failwith "Tipo nao pode ser usado no for"
        )
      and decremento = 
        (
          match tipo with
            | TipoInt -> ConstInt (-1)
            | TipoReal -> ConstReal (-1.0)
            | _ -> failwith "Tipo nao pode ser usado no for"
        ) in


      (* codigo para verificar se o passo do for 
      esta incrementando ou decrementando *)
      
      codigo_inicio @
      codigo_fim @
      [AtribBin (t, end_inicio, (Menor, tipo), end_fim)] @
      [IfFalse(t, rotulo_decrementa)] @
      [Copia(tIncremento, incremento)] @
      [Goto rotulo_inicio_for] @
      [rotulo_decrementa] @ [Copia(tIncremento, decremento)] @

      (* fim do codigo do incremento ou decremento *)
      
      [rotulo_inicio_for] @
      [Copia (Nome id, end_inicio)] @
      [rotulo_for] @
      codigo_fim @

      [AtribBin (t, Nome id, (Igual, tipo), end_fim)] @
      [IfFalse(t, rotulo_fim)] @
      corpo @
      [AtribBin (t, Nome id, (Mais, tipo), tIncremento)] @
      [Copia (Nome id, t)] @
      [Goto rotulo_for] @
      [rotulo_fim]

  | CmdSwitch ( variavel, cases, default ) ->
    let traduz_cases tempVar rotuloFinal case = 
      (
        match case with
          | CmdCase (exp, corpo) ->
            let (endr_exp, codigo_exp) = traduz_exp exp
            and codigo_corpo = traduz_cmds corpo 
            and tipo_exp = pega_tipo exp
            and t = novo_temp()
            and rotulo_false = novo_rotulo "S" in
            
            codigo_exp @
            [AtribBin (t, tempVar, (Igual, tipo_exp), endr_exp)] @
            [IfFalse (t, rotulo_false)] @
            codigo_corpo @
            [Goto rotuloFinal] @
            [rotulo_false]
      )
    in
    let tvar = novo_temp () 
    and rotulo_final = novo_rotulo "S" in 
    let cases_codigo = List.concat (List.map (traduz_cases tvar rotulo_final) cases) in
    let codigo =  [Copia (tvar, Nome (pega_nome_var variavel))] @
                  cases_codigo
    in
    (match default with
      | None -> codigo @
                [rotulo_final]
      | Some CmdCaseDefault(cmds) -> 
        let codigo_default = traduz_cmds cmds in
        codigo @ 
        codigo_default @
        [rotulo_final]
    )

  | CmdEnquanto (teste, entao) ->
      let (endr_teste, codigo_teste) = traduz_exp teste 
      and codigo_entao = traduz_cmds entao 
      and rotulo_inicio = novo_rotulo "E"
      and rotulo_falso  = novo_rotulo "E" in
      [rotulo_inicio] @
      codigo_teste @
      [IfFalse (endr_teste, rotulo_falso)] @
      codigo_entao @
      [Goto rotulo_inicio] @
      [rotulo_falso]
  | _ -> failwith "comando nao implementado"

and traduz_cmds cmds =
  match cmds with
  | [] -> []
  | cmd :: cmds ->
     let codigo = traduz_cmd cmd in
     codigo @ traduz_cmds cmds

let traduz_fun ast =
  match ast with
    Funcao {fn_nome; fn_tiporet; fn_formais; fn_locais; fn_corpo} ->  
      let nome = fst fn_nome
      and formais = List.map (fun ((id,pos),tipo) -> Recebe (id,tipo)) fn_formais
      and nformais = List.length fn_formais
      and locais = List.map (fun ((id,pos),tipo) -> Local (id,tipo)) fn_locais
      and nlocais = List.length fn_locais 
      and corpo = traduz_cmds fn_corpo 
      in
      [BeginFun (nome,nformais,nlocais)] @ formais @ locais @ corpo @ [EndFun]
        

let tradutor ast_tipada =
  let _ = zera_contadores () in 
  let (Programa (decs_globais, decs_funs, corpo)) = ast_tipada in
  let globais_trad = List.map (fun ((id,pos),tipo) -> Global (id,tipo)) decs_globais in
  let funs_trad = List.map traduz_fun decs_funs in
  let corpo_trad = traduz_cmds corpo in
  globais_trad @ (List.concat funs_trad) @ 
  [BeginFun ("main",0,0)] @ corpo_trad @ [EndFun]