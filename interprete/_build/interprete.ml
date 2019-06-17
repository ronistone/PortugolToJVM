module Amb = AmbInterp
module A = Ast
module S = Sast
module T = Tast

exception Valor_de_retorno of T.expressao

let obtem_nome_tipo_var exp = let open T in
  match exp with
  | ExpVar (v,tipo) ->
    (match v with
      | A.VarSimples (nome,_) -> (nome,tipo)
      | _ -> failwith "obtem_nome_tipo_var: nao implementado"
    )
  | _ -> failwith "obtem_nome_tipo_var: nao eh variavel"

let pega_nome_var var = let open A in
  match var with
    | VarSimples (nome,_) -> nome
    | _ -> failwith "pega_nome_var: varSimples"

let pega_int exp =
  match exp with
  |  T.ExpInt (i,_) -> i
  | _ -> failwith "pega_int: nao eh inteiro"

let pega_string exp =
  match exp with
  |  T.ExpString (s,_) -> s
  | _ -> failwith "pega_string: nao eh string"

let pega_bool exp =
  match exp with
  |  T.ExpBool (b,_) -> b
  | _ -> failwith "pega_bool: nao eh booleano"

let pega_real exp =
  match exp with
  |  T.ExpReal (r,_) -> r
  | _ -> failwith "pega_real: nao eh real"

let rec pow base exponent = 
  (match exponent with
    | 0 -> 1
    | 1 -> base
    | _ -> base * pow base (exponent - 1)
  )

type classe_op = Aritmetico | Relacional | Logico | Cadeia

let classifica op =
  let open A in
  match op with
    Mais
  | Menos
  | Mult
  | Div
  | Resto
  | Potencia -> Aritmetico
  | Menor
  | Igual
  | Difer
  | Maior
  | MaioIgual
  | MenorIgual -> Relacional
  | E
  | Ou  ->  Logico
  | Concat  -> Cadeia

let rec interpreta_exp amb exp =
  let open A in
  let open T in
  match exp with
    ExpVoid
  | ExpInt _
  | ExpString _
  | ExpChar _
  | ExpBool _
  | ExpReal _ -> exp
  | ExpVar _ ->
    let (id,tipo) = obtem_nome_tipo_var exp in
    (match (Amb.busca amb id) with
      | Amb.EntVar (tipo, v) ->
        (match v with
          | None -> failwith ("variável nao inicializada: " ^ id)
          | Some valor -> valor
        )
      |  _ -> failwith "interpreta_exp: expvar"
    )
  | ExpOp ((op,top), (esq,tesq), (dir,tdir)) ->
    let vesq = interpreta_exp amb esq
    and vdir = interpreta_exp amb dir in

    let interpreta_aritmetico () =
      (match tesq with
         TipoReal -> 
         (match op with
            | Mais      ->     ExpReal (pega_real vesq +. pega_real vdir, top)
            | Menos     ->     ExpReal (pega_real vesq -. pega_real vdir, top)
            | Mult      ->     ExpReal (pega_real vesq *. pega_real vdir, top)
            | Div       ->     ExpReal (pega_real vesq /. pega_real vdir, top)
            | Potencia  ->     ExpReal (pega_real vesq ** pega_real vdir, top)
            | _ -> failwith "Expressao aritmetica real invalida"
          )
       | TipoInt ->
          (match op with
            | Mais      ->     ExpInt (pega_int vesq + pega_int vdir, top)
            | Menos     ->     ExpInt (pega_int vesq - pega_int vdir, top)
            | Mult      ->     ExpInt (pega_int vesq * pega_int vdir, top)
            | Div       ->     ExpInt (pega_int vesq / pega_int vdir, top)
            | Resto     ->     ExpInt (pega_int vesq mod pega_int vdir, top)
            | Potencia  ->     ExpInt ((pow (pega_int vesq) (pega_int vdir)), top)
            | _ -> failwith "Expressao aritmetica real invalida"
          )
        | _ -> failwith "Tipo de expressao aritmetica invalido"
      )

    and interpreta_relacional () =
      (match tesq with
      | TipoInt ->
        (match op with
        | Menor -> ExpBool (pega_int vesq < pega_int vdir, top)
        | Maior  -> ExpBool (pega_int vesq > pega_int vdir, top)
        | MenorIgual -> ExpBool (pega_int vesq <= pega_int vdir, top)
        | MaioIgual  -> ExpBool (pega_int vesq >= pega_int vdir, top)
        | Igual   -> ExpBool (pega_int vesq == pega_int vdir, top)
        | Difer   -> ExpBool (pega_int vesq != pega_int vdir, top)
        | _ -> failwith "interpreta_relacional"
        )
      | TipoString ->
        (match op with
        | Menor -> ExpBool (pega_string vesq < pega_string vdir, top)
        | Maior  -> ExpBool (pega_string vesq > pega_string vdir, top)
        | MenorIgual -> ExpBool (pega_string vesq <= pega_string vdir, top)
        | MaioIgual  -> ExpBool (pega_string vesq >= pega_string vdir, top)
        | Igual   -> ExpBool (pega_string vesq == pega_string vdir, top)
        | Difer   -> ExpBool (pega_string vesq != pega_string vdir, top)
        | _ -> failwith "interpreta_relacional"
        )
      | TipoBool ->
        (match op with
        | Menor -> ExpBool (pega_bool vesq < pega_bool vdir, top)
        | Maior  -> ExpBool (pega_bool vesq > pega_bool vdir, top)
        | MenorIgual -> ExpBool (pega_bool vesq <= pega_bool vdir, top)
        | MaioIgual  -> ExpBool (pega_bool vesq >= pega_bool vdir, top)
        | Igual   -> ExpBool (pega_bool vesq == pega_bool vdir, top)
        | Difer   -> ExpBool (pega_bool vesq != pega_bool vdir, top)
        | _ -> failwith "interpreta_relacional"
        )
      | TipoReal ->
        (match op with
        | Menor -> ExpBool (pega_real vesq < pega_real vdir, top)
        | Maior  -> ExpBool (pega_real vesq > pega_real vdir, top)
        | MenorIgual -> ExpBool (pega_real vesq <= pega_real vdir, top)
        | MaioIgual  -> ExpBool (pega_real vesq >= pega_real vdir, top)
        | Igual   -> ExpBool (pega_real vesq == pega_real vdir, top)
        | Difer   -> ExpBool (pega_real vesq != pega_real vdir, top)
        | _ -> failwith "interpreta_relacional"
        )
      | _ ->  failwith "interpreta_relacional"
      )

    and interpreta_logico () =
      (match tesq with
       | TipoBool ->
         (match op with
          | Ou -> ExpBool (pega_bool vesq || pega_bool vdir, top)
          | E ->   ExpBool (pega_bool vesq && pega_bool vdir, top)
          | _ ->  failwith "interpreta_logico"
         )
       | _ ->  failwith "interpreta_logico"
      )
    and interpreta_cadeia () =
      (match tesq with
       | TipoString ->
         (match op with
          | Concat -> ExpString (pega_string vesq ^ pega_string vdir, top)
          | _ ->  failwith "interpreta_cadeia"
         )
       | _ ->  failwith "interpreta_cadeia"
      )

    in
    let valor = (match (classifica op) with
          Aritmetico -> interpreta_aritmetico ()
        | Relacional -> interpreta_relacional ()
        | Logico -> interpreta_logico ()
        | Cadeia -> interpreta_cadeia ()
      )
    in
      valor

  | ExpFuncao (nome, args, tipo) ->
     let open Amb in
    ( match (Amb.busca amb nome) with
      | Amb.EntFun {tipo_fn; formais; locais; corpo} ->
           (* Interpreta cada um dos argumentos *)
           let vargs = List.map (interpreta_exp amb) args in
           (* Associa os argumentos aos parâmetros formais *)
           let vformais = List.map2 (fun (n,t) v -> (n, t, Some v)) formais vargs
           in interpreta_fun amb nome vformais locais corpo
      | _ -> failwith "interpreta_exp: expchamada"
    )

and interpreta_cmd amb cmd =
  let open A in
  let open T in
  match cmd with
    CmdReturn exp ->
      let e1 = interpreta_exp amb exp in
           raise (Valor_de_retorno e1)
  | CmdSe (teste, entao, senao) ->
    let teste1 = interpreta_exp amb teste in
      (match teste1 with
        ExpBool (true,_) ->
          (* Interpreta cada comando do bloco 'então' *)
          List.iter (interpreta_cmd amb) entao
        | _ ->
          (* Interpreta cada comando do bloco 'senão', se houver *)
          (match senao with
              None -> ()
            | Some bloco -> List.iter (interpreta_cmd amb) bloco
          )
      )

  | CmdAtrib (elem, exp) ->
    (* Interpreta o lado direito da atribuição *)
    let exp = interpreta_exp amb exp in
    (* Faz o mesmo para o lado esquerdo *)
    let name = (pega_nome_var elem)
    in (match (Amb.busca amb name) with
          | Amb.EntVar (tipo, v) -> 
            Amb.atualiza_var amb name tipo (Some exp)
          |  _ -> failwith "cmd_atrib: EntVar"
        )

  | CmdChamada exp -> ignore( interpreta_exp amb exp)
  
  | CmdEntrada exps ->
    (* Obtem os nomes e os tipos de cada um dos argumentos *)
    let nts = List.map (obtem_nome_tipo_var) exps in
    let leia_var (nome,tipo) =
      let valor =
        (match tipo with
         | A.TipoInt    -> T.ExpInt    (read_int (),  tipo)
         | A.TipoString -> T.ExpString (read_line (), tipo)
         | A.TipoReal ->   T.ExpReal   (read_float (), tipo)
         | _ -> failwith "leia_var: nao implementado"
        )
      in  Amb.atualiza_var amb nome tipo (Some valor)
    in
    (* Lê o valor para cada argumento e atualiza o ambiente *)
    List.iter leia_var nts


  | CmdSaida exps ->
    (* Interpreta cada argumento da função 'saida' *)
    let exps = List.map (interpreta_exp amb) exps in
    let imprima exp =
      (match exp with
       | T.ExpInt (n,_) ->      let _ = print_int n in print_string " "
       | T.ExpReal (n,_) ->     let _ = print_float n in print_string " "
       | T.ExpString (s,_) -> let _ = print_string s in print_string " "
       | T.ExpBool (b,_) ->
         let _ = print_string (if b then "true" else "false")
         in print_string " "
       | _ -> failwith "imprima: nao implementado"
      )
    in List.iter imprima exps
  | CmdSaidaLine exps ->
    (* Interpreta cada argumento da função 'saida' *)
    let exps = List.map (interpreta_exp amb) exps in
    let imprima exp =
      (match exp with
       | T.ExpInt (n,_) ->      let _ = print_int n in print_string " "
       | T.ExpReal (n,_) ->     let _ = print_float n in print_string " "
       | T.ExpString (s,_) -> let _ = print_string s in print_string " "
       | T.ExpBool (b,_) ->
         let _ = print_string (if b then "true" else "false")
         in print_string " "
       | _ -> failwith "imprima: nao implementado"
      )
    in
    let _ = List.iter imprima exps in
    print_newline ()
  | CmdFor( variavel, inicio, fim, comandos ) ->
      ( match inicio with
          | ExpInt _ ->
              let vfim = pega_int (interpreta_exp amb fim)
              and vinicio = pega_int (interpreta_exp amb inicio) in
                let incremento = if vfim > vinicio 
                                    then 1
                                 else (-1)
                in
              let rec para atual cmds = 
                if atual <> (pega_int fim)
                  then let _ = List.iter (interpreta_cmd amb) cmds in
                        para (atual + incremento) cmds
              in para vinicio comandos
          | ExpReal _ ->
              let vfim = pega_real (interpreta_exp amb fim)
              and vinicio = pega_real (interpreta_exp amb inicio) in
                let incremento = if vfim > vinicio then 1.
                                else -1.
                in
              let rec para atual cmds = 
                if atual <> pega_real(fim)
                  then let _ = List.iter (interpreta_cmd amb) cmds in
                        para (atual +. incremento) cmds
              in para vinicio comandos
          | _ -> failwith "Tipo invalido para o inicio e o fim do comando para"
      )
  | CmdSwitch ( variavel, cases, default ) ->
      let rec verifica_cases v cs = 
          (match cs with
            | [] -> false
            | (CmdCase (exp, cmds))::cs -> 
              let exp1 = interpreta_exp amb exp in
                if exp1 = v 
                  then let _ = List.iter (interpreta_cmd amb) cmds in
                  true
                else verifica_cases v cs
          )
      in
      let id = pega_nome_var variavel in
      (match (Amb.busca amb id) with
        | Amb.EntVar (tipo, v) ->
          (match v with
            | None -> failwith ("variável nao inicializada: " ^ id)
            | Some valor -> if not (verifica_cases valor cases)
                then  (
                        match default with
                          | Some CmdCaseDefault cmds -> List.iter (interpreta_cmd amb) cmds
                          | _ -> failwith "Switch: CaseDefault"
                      )
          )
        |  _ -> failwith "interpreta_exp: expvar"
      )   
  | CmdEnquanto (teste, entao) ->
    let rec laco cmds = 
        let condValue = interpreta_exp amb teste in
          (
            match condValue with
              | ExpBool (true,_) ->
                let _ = List.iter (interpreta_cmd amb) cmds in
                  laco cmds
              | _ -> ()
          )
      in laco entao
and interpreta_fun amb fn_nome fn_formais fn_locais fn_corpo =
  let open A in
 (* Estende o ambiente global, adicionando um ambiente local *)
  let ambfn = Amb.novo_escopo amb in
   let insere_local  d =
    match d with
      (v,t) -> Amb.insere_local ambfn v  t None
  in
  (* Associa os argumentos aos parâmetros e insere no novo ambiente *)
  let insere_parametro (n,t,v) = Amb.insere_param ambfn n t v in
  let _ = List.iter insere_parametro fn_formais in
  (* Insere as variáveis locais no novo ambiente *)
    let _ = List.iter insere_local fn_locais in
    (* Interpreta cada comando presente no corpo da função usando o novo
       ambiente *)
  try
    let _ = List.iter (interpreta_cmd ambfn) fn_corpo in T.ExpVoid
    with
       Valor_de_retorno expret -> expret


let rec obtem_formais xs =
  match xs with
    [] -> []
  | (nome,t)::xs ->
    let id = fst nome in
    if (List.for_all (fun (n,t) -> (fst n) <> id) xs)
    then (id, t) :: obtem_formais xs
    else let msg = "Parametro duplicado " ^ id in
      failwith msg

let insere_declaracao_var amb dec =
  let open A in
    match dec with
        (nome, tipo) ->  Amb.insere_local amb (fst nome) tipo None

let insere_declaracao_fun amb dec =
  let open A in
    match dec with
    Funcao {fn_nome; fn_nome_fecha; fn_tiporet; fn_formais; fn_locais; fn_corpo} ->
        let nome = fst fn_nome in
        let formais = List.map (fun (n,t) -> ((fst n), t)) fn_formais in
        let locais = List.map (fun (n,t) -> ((fst n), t)) fn_locais in
        Amb.insere_fun amb nome 
        formais 
        locais 
        fn_tiporet 
        fn_corpo


(* Lista de cabeçalhos das funções pré definidas *)
let fn_predefs = let open A in [
   ("entrada", [("x", TipoInt); ("y", TipoInt)], TipoVoid, []);
   ("saida",   [("x", TipoInt); ("y", TipoInt)], TipoVoid, [])
]

(* insere as funções pré definidas no ambiente global *)
let declara_predefinidas amb =
  List.iter (fun (n,ps,tr,c) -> Amb.insere_fun amb n ps [] tr c) fn_predefs

let interprete ast =
  (* cria ambiente global inicialmente vazio *)
  let amb_global = Amb.novo_amb [] in
  let _ = declara_predefinidas amb_global in
  let (A.Programa (decs_globais, decs_funs, corpo)) = ast in
  let _ = List.iter (insere_declaracao_var amb_global) decs_globais in
  let _ = List.iter (insere_declaracao_fun amb_global) decs_funs in
  (* Interpreta a função principal *)
  let resultado = List.iter (interpreta_cmd amb_global) corpo in
  resultado

