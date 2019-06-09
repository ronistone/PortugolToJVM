(* The type of the abstract syntax tree (AST). *)
open Lexing

type ident = string
type 'a pos =  'a * Lexing.position (* tipo e posição no arquivo fonte *)

type 'expr programa = Programa of (ident pos * tipo) list * ('expr funcoes) * ('expr comandos)
and declaracoes = declaracao list
and 'expr funcoes = ('expr funcao) list
and 'expr comandos = ('expr comando) list
and declaracao = DecVar of (ident pos) * tipo
and 'expr expressoes = 'expr list
                                     
and tipo = TipoInt
         | TipoString
         | TipoReal
         | TipoBool
         | TipoVoid

and 'expr comando = CmdAtrib of variavel * 'expr
            | CmdSe of 'expr * ('expr comandos) * ('expr comandos option)
            | CmdEnquanto of 'expr * ('expr comandos)
            | CmdReturn of 'expr
            | CmdEntrada of ('expr expressoes)
            | CmdChamada of 'expr
            | CmdSaida of ('expr expressoes)
            | CmdSaidaLine of ('expr expressoes)
            | CmdFor of variavel * 'expr * 'expr * ('expr comandos)
            | CmdSwitch of variavel * ('expr cases) * ('expr caseDefault option)
            
and 'expr cases = ('expr case) list
and 'expr case = CmdCase of 'expr * ('expr comandos)
and 'expr caseDefault = CmdCaseDefault of ('expr comandos)

and variaveis = variavel list
and variavel = VarSimples of ident pos

and 'expr funcao = Funcao of ('expr decFuncao)

and 'expr decFuncao = {
  fn_nome:        ident pos;
  fn_nome_fecha:  ident pos;
  fn_tiporet:     tipo;
  fn_formais:     (ident pos * tipo) list;
  fn_locais:      (ident pos * tipo) list;
  fn_corpo:       'expr comandos
}

and oper = Mais
         | Menos
         | Mult
         | Div
         | Resto
         | Potencia
         | Menor
         | Igual
         | Difer
         | Maior
         | MaioIgual
         | MenorIgual
         | E
         | Ou
         | Concat
