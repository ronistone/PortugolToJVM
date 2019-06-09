open Ast

type expressao = ExpVar of variavel * tipo
            | ExpInt of int * tipo
            | ExpString of string * tipo
            | ExpChar of char * tipo
            | ExpBool of bool * tipo
            | ExpReal of float * tipo
            | ExpFuncao of ident * (expressao expressoes) * tipo
            | ExpOp of (oper * tipo) * (expressao * tipo) * (expressao * tipo)
            (* | ExpNegativo of (expressao * tipo) *)