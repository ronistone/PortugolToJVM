(* The type of the abstract syntax tree (AST). *)
type ident = string

type programa = Programa of declaracoes * funcoes * comandos
and declaracoes = declaracao list
and funcoes = Funcoes of funcao list
and comandos = comando list
and declaracao = DecVar of ident * tipo
and expressoes = Expressoes of expressao list
                                     
and tipo = TipoInt
         | TipoString
         | TipoReal
         | TipoBool

and campos = campo list
and campo = ident * tipo

and comando = CmdAtrib of variavel * expressao
            | CmdSe of expressao * comandos * (comandos option)
            | CmdEnquanto of expressao * comandos
            | CmdReturn of expressao
            | CmdEntrada of expressoes
            | CmdChamada of expressao
            | CmdSaida of expressoes
            | CmdSaidaLine of expressoes
            | CmdFor of variavel * expressao * expressao * comandos
            | CmdSwitch of variavel * cases * (caseDefault option)
            
and cases = case list
and case = CmdCase of expressao * comandos
and caseDefault = CmdCaseDefault of comandos

and variaveis = variavel list
and variavel = VarSimples of ident
             | VarCampo of variavel * ident
             | VarElemento of variavel * expressao

and expressao = ExpVar of variavel
              | ExpInt of int
              | ExpString of string
              | ExpChar of char
              | ExpBool of bool
              | ExpFuncao of ident * expressoes
              | ExpOp of oper * expressao * expressao
              | ExpNegativo of expressao

and funcao = Funcao of ident * ident * tipo * declaracoes * declaracoes * comandos

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
