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

and campos = campo list
and campo = ident * tipo

and comando = CmdAtrib of variavel * expressao
            | CmdSe of expressao * comandos * (comandos option)
            | CmdEnquanto of expressao * comandos
            | CmdEntrada of expressoes
            | CmdSaida of expressoes

and variaveis = variavel list
and variavel = VarSimples of ident
             | VarCampo of variavel * ident
             | VarElemento of variavel * expressao

and expressao = ExpVar of variavel
              | ExpInt of int
              | ExpString of string
              | ExpOp of oper * expressao * expressao

and funcao = Funcao of declaracoes * declaracoes * comandos

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
