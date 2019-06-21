%{
open Lexing
open Ast
open Sast
%}

%token <int * Lexing.position> LITINT
%token <string * Lexing.position> LITSTRING
%token <char * Lexing.position> LITCHAR
%token <string * Lexing.position> ID
%token <bool * Lexing.position> LITBOOL
%token <float * Lexing.position> LITREAL
%token <Lexing.position> FUNCTION FFUNCTION
%token <Lexing.position> PROGRAMA FPROGRAMA INI
%token <Lexing.position> MAIS MENOS MULTI DIV
%token <Lexing.position> INTEGER CARACTER REAL VAR BOOL
%token <Lexing.position> APAR FPAR
%token <Lexing.position> ATRIB
%token <Lexing.position> IF
%token <Lexing.position> ELSE
%token <Lexing.position> EQUALS DIFER GTE GT LTE LT POTEN RESTO
%token <Lexing.position> VIRG
%token <Lexing.position> AND OR
%token <Lexing.position> DEF
%token <Lexing.position> SAIDA ENTRADA SAIDA_LINHA
%token <Lexing.position> WHILE FWHILE FOR FFOR SWITCH FSWITCH CASE CASE_DEFAULT RETURN
%token <Lexing.position> DO
%token <Lexing.position> FIF
%token <Lexing.position> ENTAO BEGIN END
%token EOF

%left OR AND
%left EQUALS DIFER
%left LT LTE GT GTE
%right POTEN
%left MAIS MENOS RESTO
%left MULTI DIV


%start <Sast.expressao Ast.programa> prog

%%

prog:
    | PROGRAMA LITSTRING 
        ds = declaracao
      INI
        cs = comando* 
      FPROGRAMA
      dFunctions = decFunctions*
      EOF {
         Programa (List.flatten ds, dFunctions, cs) }
    ;

declaracao:
    | VAR 
      v=variaveis* { v }
    | { [] }
    ;

variaveis:
    | ids=separated_nonempty_list(VIRG, ID) DEF t=tipo {
          List.map (fun id -> (id,t)) ids
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
                   CmdEntrada xs
               }

comando_saida: SAIDA APAR xs=separated_nonempty_list(VIRG, expressao) FPAR {
                 CmdSaida xs
             }

comando_saida_l: SAIDA_LINHA APAR xs=separated_nonempty_list(VIRG, expressao) FPAR {
                 CmdSaidaLine xs
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
                      Funcao {
                        fn_nome =        a;
                        fn_nome_fecha =  b;
                        fn_tiporet =     t;
                        fn_formais =     List.flatten args;
                        fn_locais =      List.flatten variables;
                        fn_corpo =       corpo
                      }
                  }

chamada: i=ID APAR xs=separated_nonempty_list(VIRG, expressao) FPAR { 
              ExpFuncao(i, xs) 
          }

expressao:
        | c=chamada     { c }
        | v=variavel    { ExpVar v    }
        | i=LITINT      { ExpInt i    }
        | s=LITSTRING   { ExpString s }
        | c=LITCHAR     { ExpChar c }
        | b=LITBOOL     { ExpBool b }
        | r=LITREAL     { ExpReal r }
        | e1=expressao op=oper e2=expressao { ExpOp (op, e1, e2) }
        | APAR e=expressao FPAR { e }

%inline oper:
	| pos = MAIS  { (Mais, pos)  }
  | pos = MENOS { (Menos, pos) }
  | pos = MULTI  { (Mult, pos)  }
  | pos = DIV   { (Div, pos)   }
  | pos = RESTO { (Resto, pos) }
  | pos = POTEN { (Potencia, pos) }
  | pos = LT { (Menor, pos) }
  | pos = GT { (Maior, pos) }
  | pos = LTE { (MenorIgual, pos) }
  | pos = GTE { (MaioIgual, pos) }
  | pos = EQUALS { (Igual, pos) }
  | pos = DIFER { (Difer, pos) }
  | pos = AND  { (E, pos)     }
  | pos = OR { (Ou, pos)    }


variavel:
        | x=ID       { VarSimples x }