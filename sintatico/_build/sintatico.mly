%{
  open Ast
%}

%token <int> LITINT
%token <string> LITSTRING
%token <string> ID
%token PROGRAMA FPROGRAMA INI
%token MAIS MENOS MULTI DIV
%token INTEGER CARACTER REAL VAR
%token APAR FPAR
%token ATRIB
%token IF
%token ELSE
%token WHILE FWHILE
%token EQUALS DIFER
%token GTE
%token GT
%token LTE
%token LT
%token POTEN
%token RESTO
/* %token DOT */
%token VIRG
%token AND
%token OR
%token DEF
%token FUNCTION FFUNCTION
%token SAIDA ENTRADA
%token DO
%token FIF
%token ENTAO
%token EOF

%left OR AND
%left EQUALS DIFER
%left LT LTE GT GTE
%right POTEN
%left MAIS MENOS RESTO
%left MULTI DIV


%start <Ast.programa> prog

%%

prog:
    | PROGRAMA LITSTRING 
        ds = declaracao
        dFunctions = decFunctions*
      INI
        cs = comando* 
      FPROGRAMA
      EOF {
        let functions = Funcoes(dFunctions) in 
         Programa (List.flatten ds, functions, cs) }
    ;

declaracao:
    | VAR 
      v=variaveis* { v }
    | { [] }
    ;

variaveis:
    | ids=separated_nonempty_list(VIRG, ID) DEF t=tipo {
          List.map (fun id -> DecVar (id,t)) ids
    }

tipo:
    | INTEGER { TipoInt }
    | REAL { TipoReal }
    | CARACTER { TipoString }
    ;

comando: c=comando_atribuicao { c }
       | c=comando_se         { c }
       | c=comando_entrada    { c }
       | c=comando_saida      { c }
       | c=comando_enquanto   { c }
       ;

comando_atribuicao: v=variavel ATRIB e=expressao {
      CmdAtrib (v,e)
}

comando_se: IF teste=expressao ENTAO
               entao=comando+
               senao=option(ELSE cs=comando+ {cs})
            FIF {
              CmdSe (teste, entao, senao)
            }

comando_entrada: ENTRADA APAR xs=separated_nonempty_list(VIRG, expressao) FPAR {
                  let expressions = Expressoes(xs) in 
                   CmdEntrada expressions
               }

comando_saida: SAIDA APAR xs=separated_nonempty_list(VIRG, expressao) FPAR {
                 let expressions = Expressoes(xs) in 
                 CmdSaida expressions
             }

comando_enquanto: WHILE teste=expressao DO
                      entao=comando+
                  FWHILE {
                    CmdEnquanto( teste, entao )
                  }

decFunctions: FUNCTION ID APAR args=declaracao FPAR
                  variables=declaracao
                  INI
                    corpo=comando*
                  FFUNCTION {
                      Funcao( List.flatten args, List.flatten variables, corpo )
                  }


expressao:
        | v=variavel { ExpVar v    }
        | i=LITINT      { ExpInt i    }
        | s=LITSTRING   { ExpString s }
        | e1=expressao op=oper e2=expressao { ExpOp (op, e1, e2) }
        | APAR e=expressao FPAR { e }

%inline oper:
	| MAIS  { Mais  }
  | MENOS { Menos }
  | MULTI  { Mult  }
  | DIV   { Div   }
  | RESTO { Resto }
  | POTEN { Potencia }
  | LT { Menor }
  | GT { Maior }
  | LTE { MenorIgual }
  | GTE { MaioIgual }
  | EQUALS { Igual }
  | DIFER { Difer }
  | AND  { E     }
  | OR { Ou    }


variavel:
        | x=ID       { VarSimples x }