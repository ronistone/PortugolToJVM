%{
  open Ast
%}

%token <int> LITINT
%token <string> LITSTRING
%token <char> LITCHAR
%token <string> ID
/* %token <bool> LITBOOL */
%token FUNCTION FFUNCTION
%token PROGRAMA FPROGRAMA INI
%token MAIS MENOS MULTI DIV
%token INTEGER CARACTER REAL VAR BOOL
%token APAR FPAR
%token ATRIB
%token IF
%token ELSE
%token EQUALS DIFER GTE GT LTE LT POTEN RESTO
%token VIRG
%token AND OR
%token DEF
%token SAIDA ENTRADA SAIDA_LINHA
%token WHILE FWHILE FOR FFOR SWITCH FSWITCH CASE CASE_DEFAULT RETURN
%token DO
%token FIF
%token ENTAO BEGIN END
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
      INI
        cs = comando* 
      FPROGRAMA
      dFunctions = decFunctions*
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
    | INTEGER   { TipoInt }
    | REAL      { TipoReal }
    | CARACTER  { TipoString }
    | BOOL      { TipoBool }
    ;

comando: c=comando_atribuicao { c }
       | c=comando_se         { c }
       | c=comando_entrada    { c }
       | c=comando_saida      { c }
       | c=comando_saida_l    { c }
       | c=comando_enquanto   { c }
       | c=comando_for        { c }
       | c=comando_switch     { c }
       | c=comando_return     { c }
       | c=comando_chamada     { c }
       ;

comando_return: RETURN e=expressao {
      CmdReturn (e)
}

comando_chamada: exp=chamada { CmdChamada(exp) }

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

comando_saida_l: SAIDA_LINHA APAR xs=separated_nonempty_list(VIRG, expressao) FPAR {
                 let expressions = Expressoes(xs) in 
                 CmdSaidaLine expressions
             }

comando_enquanto: WHILE teste=expressao DO
                      entao=comando+
                  FWHILE {
                    CmdEnquanto( teste, entao )
                  }

comando_for:  FOR v=variavel BEGIN l=expressao END r=expressao DO
                c=comando+
              FFOR {
                CmdFor(v, l, r, c)
              }

comando_switch: SWITCH v=variavel
                    c=caso+
                    d=option(default)
                FSWITCH {
                  CmdSwitch(v, c, d)
                }

caso: CASE e=expressao
          c=comando+ {
            CmdCase(e, c)
          }

default: CASE_DEFAULT
            c=comando+ {
              CmdCaseDefault(c)
            }

decFunctions: FUNCTION a=ID APAR args=variaveis* FPAR DEF t=tipo
                  variables=declaracao
                INI
                  corpo=comando*
                FFUNCTION b=ID {  
                      Funcao( a, b, t, List.flatten args, List.flatten variables, corpo )
                  }

chamada: i=ID APAR xs=separated_nonempty_list(VIRG, expressao) FPAR { 
              let expressions = Expressoes(xs) in 
              ExpFuncao(i, expressions) 
          }

expressao:
        | c=chamada     { c }
        | v=variavel    { ExpVar v    }
        | i=LITINT      { ExpInt i    }
        | s=LITSTRING   { ExpString s }
        | c=LITCHAR     { ExpChar c }
        | e1=expressao op=oper e2=expressao { ExpOp (op, e1, e2) }
        | APAR e=expressao FPAR { e }
        | MENOS e=expressao { ExpNegativo(e) }

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