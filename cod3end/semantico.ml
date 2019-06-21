module Amb = Ambiente
module A = Ast
module S = Sast
module T = Tast

let rec posicao_var var = let open A in
  match var with
  | VarSimples (_, pos) -> pos
  

let rec posicao exp = let open S in
  match exp with
  | ExpVar v -> (match v with
      | A.VarSimples (_,pos) -> pos
    )
  | ExpInt (_,pos) -> pos
  | ExpString  (_,pos) -> pos
  | ExpChar (_, pos) -> pos
  (* | ExpNegativo (_, (_,pos)) -> pos *)
  | ExpBool (_,pos) -> pos
  | ExpReal (_,pos) -> pos
  | ExpOp ((_,pos),_,_)  -> pos
  | ExpFuncao ((_,pos), _) -> pos

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

let msg_erro_pos pos msg =
  let open Lexing in
  let lin = pos.pos_lnum
  and col = pos.pos_cnum - pos.pos_bol - 1 in
  Printf.sprintf "Semantico -> linha %d, coluna %d: %s" lin col msg

let msg_erro nome msg =
  let pos = snd nome in
  msg_erro_pos pos msg

let nome_tipo t =
  let open A in
    match t with
      TipoInt -> "inteiro"
    | TipoString -> "string"
    | TipoBool -> "bool"
    | TipoVoid -> "void"
    | TipoReal -> "real"

let mesmo_tipo pos msg tinf tdec =
  if tinf <> tdec
  then
    let msg = Printf.sprintf msg (nome_tipo tinf) (nome_tipo tdec) in
    failwith (msg_erro_pos pos msg)

let busca_por_id nome amb id = 
         (try (match (Amb.busca amb id) with
               | Amb.EntVar tipo -> (T.ExpVar (A.VarSimples nome, tipo), tipo)
               | Amb.EntFun _ ->
                 let msg = "nome de funcao usado como nome de variavel: " ^ id in
                  failwith (msg_erro nome msg)
             )
          with Not_found ->
                 let msg = "A variavel " ^ id ^ " nao foi declarada" in
                 failwith (msg_erro nome msg)
         )

let busca_variavel_por_id nome amb id = 
         (try (match (Amb.busca amb id) with
               | Amb.EntVar tipo -> (A.VarSimples nome, tipo)
               | Amb.EntFun _ ->
                 let msg = "nome de funcao usado como nome de variavel: " ^ id in
                  failwith (msg_erro nome msg)
             )
          with Not_found ->
                 let msg = "A variavel " ^ id ^ " nao foi declarada" in
                 failwith (msg_erro nome msg)
         )
    
let rec infere_exp amb exp =
  match exp with
    S.ExpInt n    -> (T.ExpInt (fst n, A.TipoInt),       A.TipoInt)
  | S.ExpString s -> (T.ExpString (fst s, A.TipoString), A.TipoString)
  | S.ExpChar s -> (T.ExpChar (fst s, A.TipoString), A.TipoString)
  | S.ExpBool b   -> (T.ExpBool (fst b, A.TipoBool),     A.TipoBool)
  | S.ExpReal b   -> (T.ExpReal (fst b, A.TipoReal),     A.TipoReal)
  | S.ExpVar v ->
    (match v with
       A.VarSimples nome ->
       (* Tenta encontrar a definição da variável no escopo local, se não      *)
       (* encontar tenta novamente no escopo que engloba o atual. Prossegue-se *)
       (* assim até encontrar a definição em algum escopo englobante ou até    *)
       (* encontrar o escopo global. Se em algum lugar for encontrado,         *)
       (* devolve-se a definição. Em caso contrário, devolve uma exceção       *)
       let id = fst nome in busca_por_id nome amb id
    )
  | S.ExpOp (op, esq, dir) ->
    let (esq, tesq) = infere_exp amb esq
    and (dir, tdir) = infere_exp amb dir in

    let verifica_aritmetico () =
      (match tesq with
         A.TipoInt
       | A.TipoReal ->
         let _ = mesmo_tipo (snd op)
                      "O operando esquerdo eh do tipo %s mas o direito eh do tipo %s"
                      tesq tdir
         in tesq (* O tipo da expressão aritmética como um todo *)
       | t -> let msg = "um operador aritmetico nao pode ser usado com o tipo " ^
                        (nome_tipo t)
         in failwith (msg_erro_pos (snd op) msg)
      )

    and verifica_relacional () =
      (match tesq with
         A.TipoInt
       | A.TipoReal
       | A.TipoString ->
         let _ = mesmo_tipo (snd op)
                   "O operando esquerdo eh do tipo %s mas o direito eh do tipo %s"
                   tesq tdir
         in A.TipoBool (* O tipo da expressão relacional é sempre booleano *)

       | t -> let msg = "um operador relacional nao pode ser usado com o tipo " ^
                        (nome_tipo t)
         in failwith (msg_erro_pos (snd op) msg)
      )

    and verifica_logico () =
      (match tesq with
         A.TipoBool ->
         let _ = mesmo_tipo (snd op)
                   "O operando esquerdo eh do tipo %s mas o direito eh do tipo %s"
                   tesq tdir
         in A.TipoBool (* O tipo da expressão lógica é sempre booleano *)

       | t -> let msg = "um operador logico nao pode ser usado com o tipo " ^
                        (nome_tipo t)
              in failwith (msg_erro_pos (snd op) msg)
      )
    and verifica_cadeia () =
      (match tesq with
         A.TipoString ->
         let _ = mesmo_tipo (snd op)
                   "O operando esquerdo eh do tipo %s mas o direito eh do tipo %s"
                   tesq tdir
         in A.TipoString (* O tipo da expressão relacional é sempre string *)

       | t -> let msg = "um operador relacional nao pode ser usado com o tipo " ^
                        (nome_tipo t)
              in failwith (msg_erro_pos (snd op) msg)
      )

    in
    let op = fst op in
    let tinf = (match (classifica op) with
          Aritmetico -> verifica_aritmetico ()
        | Relacional -> verifica_relacional ()
        | Logico -> verifica_logico ()
        | Cadeia -> verifica_cadeia ()
      )
    in
      (T.ExpOp ((op,tinf), (esq, tesq), (dir, tdir)), tinf)

  | S.ExpFuncao (nome, args) ->
     let rec verifica_parametros ags ps fs =
        match (ags, ps, fs) with
         (a::ags), (p::ps), (f::fs) ->
            let _ = mesmo_tipo (posicao a)
                     "O parametro eh do tipo %s mas deveria ser do tipo %s" p f
            in verifica_parametros ags ps fs
       | [], [], [] -> ()
       | _ -> failwith (msg_erro nome "Numero incorreto de parametros")
     in
     let id = fst nome in
     try
       begin
         let open Amb in

         match (Amb.busca amb id) with
         (* verifica se 'nome' está associada a uma função *)
           Amb.EntFun {tipo_fn; formais} ->
           (* Infere o tipo de cada um dos argumentos *)
           let argst = List.map (infere_exp amb) args
           (* Obtem o tipo de cada parâmetro formal *)
           and tipos_formais = List.map snd formais in
           (* Verifica se o tipo de cada argumento confere com o tipo declarado *)
           (* do parâmetro formal correspondente.                               *)
           let _ = verifica_parametros args (List.map snd argst) tipos_formais
            in (T.ExpFuncao (id, (List.map fst argst), tipo_fn), tipo_fn)
         | Amb.EntVar _ -> (* Se estiver associada a uma variável, falhe *)
           let msg = id ^ " eh uma variavel e nao uma funcao" in
           failwith (msg_erro nome msg)
       end
     with Not_found ->
       let msg = "Nao existe a funcao de nome " ^ id in
       failwith (msg_erro nome msg)

let rec verifica_cmd amb tiporet cmd =
  let open A in
  match cmd with
    CmdReturn exp ->
      let (e1,tinf) = infere_exp amb exp in
           let _ = mesmo_tipo (posicao exp)
                              "O tipo retornado eh %s mas foi declarado como %s"
                              tinf tiporet
           in CmdReturn (e1)
  | CmdSe (teste, entao, senao) ->
    let (teste1,tinf) = infere_exp amb teste in
    (* O tipo inferido para a expressão 'teste' do condicional deve ser booleano *)
    let _ = mesmo_tipo (posicao teste)
             "O teste do if deveria ser do tipo %s e nao %s"
             TipoBool tinf in
    (* Verifica a validade de cada comando do bloco 'então' *)
    let entao1 = List.map (verifica_cmd amb tiporet) entao in
    (* Verifica a validade de cada comando do bloco 'senão', se houver *)
    let senao1 =
        match senao with
          None -> None
        | Some bloco -> Some (List.map (verifica_cmd amb tiporet) bloco)
     in
     CmdSe (teste1, entao1, senao1)

  | CmdAtrib (elem, exp) ->
    (* Infere o tipo da expressão no lado direito da atribuição *)
    let (exp,  tdir) = infere_exp amb exp
    (* Faz o mesmo para o lado esquerdo *)
    and (elem1, tesq) = 
      (
        match elem with
            A.VarSimples name ->  let id = fst name 
                in busca_variavel_por_id name amb id
          (* | _ -> failwith "O lado esquerdo de uma atribuição precisa ser uma variavel!" *)
      ) in
      
    (* Os dois tipos devem ser iguais *)
    let _ = mesmo_tipo (posicao_var elem)
                       "Atribuicao com tipos diferentes: %s = %s" tesq tdir
    in CmdAtrib (elem1, exp)

  | CmdChamada exp ->
     let (exp,tinf) = infere_exp amb exp in
     CmdChamada exp

  | CmdEntrada exps ->
    (* Verifica o tipo de cada argumento da função 'entrada' *)
    let exps = List.map (infere_exp amb) exps in
    CmdEntrada (List.map fst exps)

  | CmdSaida exps ->
    (* Verifica o tipo de cada argumento da função 'saida' *)
    let exps = List.map (infere_exp amb) exps in
    CmdSaida (List.map fst exps)
  | CmdSaidaLine exps ->
    (* Verifica o tipo de cada argumento da função 'saida' *)
    let exps = List.map (infere_exp amb) exps in
    CmdSaidaLine (List.map fst exps)
  | CmdFor( variavel, inicio, fim, comandos ) ->
      let (variavel1, tvar) = 
        (
          match variavel with
              A.VarSimples name ->  let id = fst name 
                  in busca_variavel_por_id name amb id
            (* | _ -> failwith "O lado esquerdo de uma atribuição precisa ser uma variavel!" *)
        ) in
        let (inicio1, tinicio) = infere_exp amb inicio 
          and (fim1, tfim) = infere_exp amb fim in
          
        let _ = mesmo_tipo (posicao inicio)
             "A expressao de inicio e fim devem se do mesmo tipo e sao: %s e %s" tinicio tfim
             and _ = mesmo_tipo (posicao fim)
              "A variavel deve ser do mesmo tipo das expressoes inicio e fim mas sao: varialvel=%s e expressoes=%s" 
              tvar tinicio in
        (* Verifica a validade de cada comando do bloco *)
        let comandos1 = List.map (verifica_cmd amb tiporet) comandos in    
        CmdFor (variavel1, inicio1, fim1, comandos1)
  | CmdSwitch ( variavel, cases, default ) ->
        let (variavel1, tvar) = 
        (
          match variavel with
              A.VarSimples name ->  let id = fst name 
                  in busca_variavel_por_id name amb id
            (* | _ -> failwith "O lado esquerdo de uma atribuição precisa ser uma variavel!" *)
        ) in
        let gera_case exp cmds = 
            let (exp1, texp) = infere_exp amb exp
            and comandos1 = List.map (verifica_cmd amb tiporet) cmds in
            let _ = mesmo_tipo (posicao exp)
                    "A expressao do caso precisa ser igual ao tipo da variavel do escolha %s %s"
                    tvar texp in
            CmdCase(exp1, comandos1) in
        let verifica_case case = 
            (match case with
                  A.CmdCase (exp,cmds) -> gera_case exp cmds
            ) in
        let verifica_case_default case = 
            (
              match case with
                None -> None
              | Some A.CmdCaseDefault (cmds) -> Some (CmdCaseDefault(List.map (verifica_cmd amb tiporet) cmds))
            )
          in
        let default1 = verifica_case_default default
        in 
        let cases1 = List.map (verifica_case) cases in

        CmdSwitch( variavel1, cases1, default1 )
  | CmdEnquanto (teste, entao) ->
    let (teste1,tinf) = infere_exp amb teste in
    (* O tipo inferido para a expressão 'teste' do condicional deve ser booleano *)
    let _ = mesmo_tipo (posicao teste)
             "O teste do enquanto deveria ser do tipo %s e nao %s"
             TipoBool tinf in
    (* Verifica a validade de cada comando do bloco 'então' *)
    let entao1 = List.map (verifica_cmd amb tiporet) entao in
     CmdEnquanto (teste1, entao1)
  (* | _ -> failwith "Comando não implementado ainda!" *)
and verifica_fun amb ast =
  let open A in
  match ast with
    A.Funcao {fn_nome; fn_nome_fecha;fn_tiporet; fn_formais; fn_locais; fn_corpo} ->
    (* Estende o ambiente global, adicionando um ambiente local *)
    let ambfn = Amb.novo_escopo amb in
    (* Insere os parâmetros no novo ambiente *)
    let insere_parametro (v,t) = Amb.insere_param ambfn (fst v) t in
    let _ = List.iter insere_parametro fn_formais in
    (* Insere as variáveis locais no novo ambiente *)
    let insere_local = function
        (v,t) -> Amb.insere_local ambfn (fst v)  t in
    let _ = List.iter insere_local fn_locais in
    (* Verifica cada comando presente no corpfn_formaiso da função usando o novo ambiente *)
    let corpo_tipado = List.map (verifica_cmd ambfn fn_tiporet) fn_corpo in
      A.Funcao {fn_nome; fn_nome_fecha; fn_tiporet; fn_formais; fn_locais; fn_corpo = corpo_tipado}


let rec verifica_dup xs =
  match xs with
    [] -> []
  | (nome,t)::xs ->
    let id = fst nome in
    if (List.for_all (fun (n,t) -> (fst n) <> id) xs)
    then (id, t) :: verifica_dup xs
    else let msg = "Parametro duplicado " ^ id in
      failwith (msg_erro nome msg)

let insere_declaracao_var amb dec =
  let open A in
    match dec with
        (nome, tipo) ->  Amb.insere_local amb (fst nome) tipo

let insere_declaracao_fun amb dec =
  let open A in
    match dec with
    Funcao {fn_nome; fn_tiporet; fn_formais; fn_corpo} ->
        (* Verifica se não há parâmetros duplicados *)
        let formais = verifica_dup fn_formais in
        let nome = fst fn_nome in
        Amb.insere_fun amb nome formais fn_tiporet


(* Lista de cabeçalhos das funções pré definidas *)
let fn_predefs = let open A in [
   ("entrada", [("x", TipoInt); ("y", TipoInt)], TipoVoid);
   ("saida",   [("x", TipoInt); ("y", TipoInt)], TipoVoid)
]

(* insere as funções pré definidas no ambiente global *)
let declara_predefinidas amb =
  List.iter (fun (n,ps,tr) -> Amb.insere_fun amb n ps tr) fn_predefs

let semantico ast =
  (* cria ambiente global inicialmente vazio *)
  let amb_global = Amb.novo_amb [] in
  let _ = declara_predefinidas amb_global in
  let (A.Programa (decs_globais, decs_funs, corpo)) = ast in
  let _ = List.iter (insere_declaracao_var amb_global) decs_globais in
  let _ = List.iter (insere_declaracao_fun amb_global) decs_funs in
  (* Verificação de tipos nas funções *)
  let decs_funs = List.map (verifica_fun amb_global) decs_funs in
  (* Verificação de tipos na função principal *)
  let corpo = List.map (verifica_cmd amb_global A.TipoVoid) corpo in
     (A.Programa (decs_globais, decs_funs, corpo),  amb_global)
