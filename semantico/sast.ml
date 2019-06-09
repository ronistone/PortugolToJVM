open Ast

type expressao = ExpVar of variavel
            | ExpInt of int pos
            | ExpString of string pos
            | ExpChar of char pos
            | ExpBool of bool pos
            | ExpReal of float pos
            | ExpFuncao of ident pos * (expressao expressoes)
            | ExpOp of oper pos * expressao * expressao
            (* | ExpNegativo of expressao *)