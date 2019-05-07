prog: PROGRAMA LITSTRING INI ENTRADA APAR WHILE 
##
## Ends in an error in state: 93.
##
## comando_entrada -> ENTRADA APAR . separated_nonempty_list(VIRG,expressao) FPAR [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## ENTRADA APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI ENTRADA WHILE 
##
## Ends in an error in state: 92.
##
## comando_entrada -> ENTRADA . APAR separated_nonempty_list(VIRG,expressao) FPAR [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## ENTRADA 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FOR ID BEGIN LITSTRING END LITSTRING DO RETURN ID FWHILE 
##
## Ends in an error in state: 99.
##
## comando_for -> FOR variavel BEGIN expressao END expressao DO nonempty_list(comando) . FFOR [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## FOR variavel BEGIN expressao END expressao DO nonempty_list(comando) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 24, spurious reduction of production variavel -> ID 
## In state 27, spurious reduction of production expressao -> variavel 
## In state 81, spurious reduction of production comando_return -> RETURN expressao 
## In state 105, spurious reduction of production comando -> comando_return 
## In state 111, spurious reduction of production nonempty_list(comando) -> comando 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FOR ID BEGIN LITSTRING END LITSTRING DO VIRG 
##
## Ends in an error in state: 91.
##
## comando_for -> FOR variavel BEGIN expressao END expressao DO . nonempty_list(comando) FFOR [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## FOR variavel BEGIN expressao END expressao DO 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FOR ID BEGIN LITSTRING END LITSTRING WHILE 
##
## Ends in an error in state: 90.
##
## comando_for -> FOR variavel BEGIN expressao END expressao . DO nonempty_list(comando) FFOR [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
## expressao -> expressao . MAIS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## FOR variavel BEGIN expressao END expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FOR ID BEGIN LITSTRING END WHILE 
##
## Ends in an error in state: 89.
##
## comando_for -> FOR variavel BEGIN expressao END . expressao DO nonempty_list(comando) FFOR [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## FOR variavel BEGIN expressao END 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FOR ID BEGIN LITSTRING WHILE 
##
## Ends in an error in state: 88.
##
## comando_for -> FOR variavel BEGIN expressao . END expressao DO nonempty_list(comando) FFOR [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
## expressao -> expressao . MAIS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS END DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS END DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS END DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS END DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS END DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS END DIV DIFER AND ]
## expressao -> expressao . LT expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS END DIV DIFER AND ]
## expressao -> expressao . GT expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS END DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS END DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS END DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS END DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS END DIV DIFER AND ]
## expressao -> expressao . AND expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS END DIV DIFER AND ]
## expressao -> expressao . OR expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS END DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## FOR variavel BEGIN expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FOR ID BEGIN WHILE 
##
## Ends in an error in state: 87.
##
## comando_for -> FOR variavel BEGIN . expressao END expressao DO nonempty_list(comando) FFOR [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## FOR variavel BEGIN 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FOR ID WHILE 
##
## Ends in an error in state: 86.
##
## comando_for -> FOR variavel . BEGIN expressao END expressao DO nonempty_list(comando) FFOR [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## FOR variavel 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FOR WHILE 
##
## Ends in an error in state: 85.
##
## comando_for -> FOR . variavel BEGIN expressao END expressao DO nonempty_list(comando) FFOR [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## FOR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FPROGRAMA FUNCTION ID APAR FPAR DEF BOOL INI FFUNCTION ID WHILE 
##
## Ends in an error in state: 148.
##
## list(decFunctions) -> decFunctions . list(decFunctions) [ EOF ]
##
## The known suffix of the stack is as follows:
## decFunctions 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FPROGRAMA FUNCTION ID APAR FPAR DEF REAL INI FFUNCTION WHILE 
##
## Ends in an error in state: 142.
##
## decFunctions -> FUNCTION ID APAR list(variaveis) FPAR DEF tipo declaracao INI list(comando) FFUNCTION . ID [ FUNCTION EOF ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR list(variaveis) FPAR DEF tipo declaracao INI list(comando) FFUNCTION 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FPROGRAMA FUNCTION ID APAR FPAR DEF REAL INI RETURN ID FPROGRAMA 
##
## Ends in an error in state: 141.
##
## decFunctions -> FUNCTION ID APAR list(variaveis) FPAR DEF tipo declaracao INI list(comando) . FFUNCTION ID [ FUNCTION EOF ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR list(variaveis) FPAR DEF tipo declaracao INI list(comando) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 24, spurious reduction of production variavel -> ID 
## In state 27, spurious reduction of production expressao -> variavel 
## In state 81, spurious reduction of production comando_return -> RETURN expressao 
## In state 105, spurious reduction of production comando -> comando_return 
## In state 144, spurious reduction of production list(comando) -> 
## In state 145, spurious reduction of production list(comando) -> comando list(comando) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FPROGRAMA FUNCTION ID APAR FPAR DEF REAL INI VIRG 
##
## Ends in an error in state: 140.
##
## decFunctions -> FUNCTION ID APAR list(variaveis) FPAR DEF tipo declaracao INI . list(comando) FFUNCTION ID [ FUNCTION EOF ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR list(variaveis) FPAR DEF tipo declaracao INI 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FPROGRAMA FUNCTION ID APAR FPAR DEF REAL VAR ID DEF BOOL FPAR 
##
## Ends in an error in state: 139.
##
## decFunctions -> FUNCTION ID APAR list(variaveis) FPAR DEF tipo declaracao . INI list(comando) FFUNCTION ID [ FUNCTION EOF ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR list(variaveis) FPAR DEF tipo declaracao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 7, spurious reduction of production list(variaveis) -> 
## In state 15, spurious reduction of production list(variaveis) -> variaveis list(variaveis) 
## In state 16, spurious reduction of production declaracao -> VAR list(variaveis) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FPROGRAMA FUNCTION ID APAR FPAR DEF REAL WHILE 
##
## Ends in an error in state: 138.
##
## decFunctions -> FUNCTION ID APAR list(variaveis) FPAR DEF tipo . declaracao INI list(comando) FFUNCTION ID [ FUNCTION EOF ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR list(variaveis) FPAR DEF tipo 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FPROGRAMA FUNCTION ID APAR FPAR DEF WHILE 
##
## Ends in an error in state: 137.
##
## decFunctions -> FUNCTION ID APAR list(variaveis) FPAR DEF . tipo declaracao INI list(comando) FFUNCTION ID [ FUNCTION EOF ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR list(variaveis) FPAR DEF 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FPROGRAMA FUNCTION ID APAR FPAR WHILE 
##
## Ends in an error in state: 136.
##
## decFunctions -> FUNCTION ID APAR list(variaveis) FPAR . DEF tipo declaracao INI list(comando) FFUNCTION ID [ FUNCTION EOF ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR list(variaveis) FPAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FPROGRAMA FUNCTION ID APAR ID DEF BOOL INI 
##
## Ends in an error in state: 135.
##
## decFunctions -> FUNCTION ID APAR list(variaveis) . FPAR DEF tipo declaracao INI list(comando) FFUNCTION ID [ FUNCTION EOF ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR list(variaveis) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 7, spurious reduction of production list(variaveis) -> 
## In state 15, spurious reduction of production list(variaveis) -> variaveis list(variaveis) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FPROGRAMA FUNCTION ID APAR WHILE 
##
## Ends in an error in state: 134.
##
## decFunctions -> FUNCTION ID APAR . list(variaveis) FPAR DEF tipo declaracao INI list(comando) FFUNCTION ID [ FUNCTION EOF ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FPROGRAMA FUNCTION ID WHILE 
##
## Ends in an error in state: 133.
##
## decFunctions -> FUNCTION ID . APAR list(variaveis) FPAR DEF tipo declaracao INI list(comando) FFUNCTION ID [ FUNCTION EOF ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FPROGRAMA FUNCTION WHILE 
##
## Ends in an error in state: 132.
##
## decFunctions -> FUNCTION . ID APAR list(variaveis) FPAR DEF tipo declaracao INI list(comando) FFUNCTION ID [ FUNCTION EOF ]
##
## The known suffix of the stack is as follows:
## FUNCTION 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FPROGRAMA WHILE 
##
## Ends in an error in state: 131.
##
## prog -> PROGRAMA LITSTRING declaracao INI list(comando) FPROGRAMA . list(decFunctions) EOF [ # ]
##
## The known suffix of the stack is as follows:
## PROGRAMA LITSTRING declaracao INI list(comando) FPROGRAMA 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI ID APAR WHILE 
##
## Ends in an error in state: 25.
##
## chamada -> ID APAR . separated_nonempty_list(VIRG,expressao) FPAR [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## ID APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI ID ATRIB LITSTRING VIRG 
##
## Ends in an error in state: 98.
##
## comando_atribuicao -> variavel ATRIB expressao . [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
## expressao -> expressao . MAIS expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## variavel ATRIB expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI ID ATRIB WHILE 
##
## Ends in an error in state: 97.
##
## comando_atribuicao -> variavel ATRIB . expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## variavel ATRIB 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI ID VAR 
##
## Ends in an error in state: 24.
##
## chamada -> ID . APAR separated_nonempty_list(VIRG,expressao) FPAR [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## variavel -> ID . [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE ATRIB AND ]
##
## The known suffix of the stack is as follows:
## ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI ID WHILE 
##
## Ends in an error in state: 96.
##
## comando_atribuicao -> variavel . ATRIB expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## variavel 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 24, spurious reduction of production variavel -> ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI IF LITSTRING ENTAO RETURN ID ELSE RETURN ID FWHILE 
##
## Ends in an error in state: 117.
##
## comando_se -> IF expressao ENTAO nonempty_list(comando) option(__anonymous_0) . FIF [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## IF expressao ENTAO nonempty_list(comando) option(__anonymous_0) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 24, spurious reduction of production variavel -> ID 
## In state 27, spurious reduction of production expressao -> variavel 
## In state 81, spurious reduction of production comando_return -> RETURN expressao 
## In state 105, spurious reduction of production comando -> comando_return 
## In state 111, spurious reduction of production nonempty_list(comando) -> comando 
## In state 116, spurious reduction of production option(__anonymous_0) -> ELSE nonempty_list(comando) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI IF LITSTRING ENTAO RETURN ID ELSE VIRG 
##
## Ends in an error in state: 115.
##
## option(__anonymous_0) -> ELSE . nonempty_list(comando) [ FIF ]
##
## The known suffix of the stack is as follows:
## ELSE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI IF LITSTRING ENTAO RETURN ID FWHILE 
##
## Ends in an error in state: 114.
##
## comando_se -> IF expressao ENTAO nonempty_list(comando) . option(__anonymous_0) FIF [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## IF expressao ENTAO nonempty_list(comando) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 24, spurious reduction of production variavel -> ID 
## In state 27, spurious reduction of production expressao -> variavel 
## In state 81, spurious reduction of production comando_return -> RETURN expressao 
## In state 105, spurious reduction of production comando -> comando_return 
## In state 111, spurious reduction of production nonempty_list(comando) -> comando 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI IF LITSTRING ENTAO VIRG 
##
## Ends in an error in state: 84.
##
## comando_se -> IF expressao ENTAO . nonempty_list(comando) option(__anonymous_0) FIF [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## IF expressao ENTAO 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI IF LITSTRING WHILE 
##
## Ends in an error in state: 83.
##
## comando_se -> IF expressao . ENTAO nonempty_list(comando) option(__anonymous_0) FIF [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
## expressao -> expressao . MAIS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS ENTAO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS ENTAO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS ENTAO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS ENTAO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS ENTAO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS ENTAO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS ENTAO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS ENTAO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS ENTAO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS ENTAO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS ENTAO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS ENTAO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS ENTAO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS ENTAO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## IF expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI IF WHILE 
##
## Ends in an error in state: 82.
##
## comando_se -> IF . expressao ENTAO nonempty_list(comando) option(__anonymous_0) FIF [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## IF 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI RETURN LITSTRING FFUNCTION 
##
## Ends in an error in state: 130.
##
## prog -> PROGRAMA LITSTRING declaracao INI list(comando) . FPROGRAMA list(decFunctions) EOF [ # ]
##
## The known suffix of the stack is as follows:
## PROGRAMA LITSTRING declaracao INI list(comando) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 81, spurious reduction of production comando_return -> RETURN expressao 
## In state 105, spurious reduction of production comando -> comando_return 
## In state 144, spurious reduction of production list(comando) -> 
## In state 145, spurious reduction of production list(comando) -> comando list(comando) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI RETURN LITSTRING FWHILE 
##
## Ends in an error in state: 144.
##
## list(comando) -> comando . list(comando) [ FPROGRAMA FFUNCTION ]
##
## The known suffix of the stack is as follows:
## comando 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 81, spurious reduction of production comando_return -> RETURN expressao 
## In state 105, spurious reduction of production comando -> comando_return 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI RETURN LITSTRING VIRG 
##
## Ends in an error in state: 81.
##
## comando_return -> RETURN expressao . [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
## expressao -> expressao . MAIS expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR EQUALS ENTRADA ELSE DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## RETURN expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI RETURN WHILE 
##
## Ends in an error in state: 80.
##
## comando_return -> RETURN . expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## RETURN 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SAIDA APAR WHILE 
##
## Ends in an error in state: 77.
##
## comando_saida -> SAIDA APAR . separated_nonempty_list(VIRG,expressao) FPAR [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## SAIDA APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SAIDA WHILE 
##
## Ends in an error in state: 76.
##
## comando_saida -> SAIDA . APAR separated_nonempty_list(VIRG,expressao) FPAR [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## SAIDA 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SAIDA_LINHA APAR LITSTRING VIRG WHILE 
##
## Ends in an error in state: 62.
##
## separated_nonempty_list(VIRG,expressao) -> expressao VIRG . separated_nonempty_list(VIRG,expressao) [ FPAR ]
##
## The known suffix of the stack is as follows:
## expressao VIRG 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SAIDA_LINHA APAR LITSTRING WHILE 
##
## Ends in an error in state: 61.
##
## expressao -> expressao . MAIS expressao [ VIRG RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ VIRG RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ VIRG RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ VIRG RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ VIRG RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ VIRG RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . LT expressao [ VIRG RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . GT expressao [ VIRG RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ VIRG RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ VIRG RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ VIRG RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ VIRG RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . AND expressao [ VIRG RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . OR expressao [ VIRG RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## separated_nonempty_list(VIRG,expressao) -> expressao . [ FPAR ]
## separated_nonempty_list(VIRG,expressao) -> expressao . VIRG separated_nonempty_list(VIRG,expressao) [ FPAR ]
##
## The known suffix of the stack is as follows:
## expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SAIDA_LINHA APAR WHILE 
##
## Ends in an error in state: 73.
##
## comando_saida_l -> SAIDA_LINHA APAR . separated_nonempty_list(VIRG,expressao) FPAR [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## SAIDA_LINHA APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SAIDA_LINHA WHILE 
##
## Ends in an error in state: 72.
##
## comando_saida_l -> SAIDA_LINHA . APAR separated_nonempty_list(VIRG,expressao) FPAR [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## SAIDA_LINHA 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SWITCH ID CASE LITSTRING RETURN LITSTRING CASE_DEFAULT RETURN ID FWHILE 
##
## Ends in an error in state: 123.
##
## comando_switch -> SWITCH variavel nonempty_list(caso) option(default) . FSWITCH [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## SWITCH variavel nonempty_list(caso) option(default) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 24, spurious reduction of production variavel -> ID 
## In state 27, spurious reduction of production expressao -> variavel 
## In state 81, spurious reduction of production comando_return -> RETURN expressao 
## In state 105, spurious reduction of production comando -> comando_return 
## In state 111, spurious reduction of production nonempty_list(comando) -> comando 
## In state 122, spurious reduction of production default -> CASE_DEFAULT nonempty_list(comando) 
## In state 125, spurious reduction of production option(default) -> default 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SWITCH ID CASE LITSTRING RETURN LITSTRING CASE_DEFAULT VIRG 
##
## Ends in an error in state: 121.
##
## default -> CASE_DEFAULT . nonempty_list(comando) [ FSWITCH ]
##
## The known suffix of the stack is as follows:
## CASE_DEFAULT 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SWITCH ID CASE LITSTRING RETURN LITSTRING FWHILE 
##
## Ends in an error in state: 126.
##
## nonempty_list(caso) -> caso . [ FSWITCH CASE_DEFAULT ]
## nonempty_list(caso) -> caso . nonempty_list(caso) [ FSWITCH CASE_DEFAULT ]
##
## The known suffix of the stack is as follows:
## caso 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 81, spurious reduction of production comando_return -> RETURN expressao 
## In state 105, spurious reduction of production comando -> comando_return 
## In state 111, spurious reduction of production nonempty_list(comando) -> comando 
## In state 119, spurious reduction of production caso -> CASE expressao nonempty_list(comando) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SWITCH ID CASE LITSTRING VIRG 
##
## Ends in an error in state: 71.
##
## caso -> CASE expressao . nonempty_list(comando) [ FSWITCH CASE_DEFAULT CASE ]
## expressao -> expressao . MAIS expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FOR EQUALS ENTRADA DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FOR EQUALS ENTRADA DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FOR EQUALS ENTRADA DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FOR EQUALS ENTRADA DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FOR EQUALS ENTRADA DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FOR EQUALS ENTRADA DIV DIFER AND ]
## expressao -> expressao . LT expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FOR EQUALS ENTRADA DIV DIFER AND ]
## expressao -> expressao . GT expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FOR EQUALS ENTRADA DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FOR EQUALS ENTRADA DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FOR EQUALS ENTRADA DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FOR EQUALS ENTRADA DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FOR EQUALS ENTRADA DIV DIFER AND ]
## expressao -> expressao . AND expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FOR EQUALS ENTRADA DIV DIFER AND ]
## expressao -> expressao . OR expressao [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FOR EQUALS ENTRADA DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## CASE expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SWITCH ID CASE WHILE 
##
## Ends in an error in state: 70.
##
## caso -> CASE . expressao nonempty_list(comando) [ FSWITCH CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## CASE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SWITCH ID WHILE 
##
## Ends in an error in state: 69.
##
## comando_switch -> SWITCH variavel . nonempty_list(caso) option(default) FSWITCH [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## SWITCH variavel 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SWITCH WHILE 
##
## Ends in an error in state: 67.
##
## comando_switch -> SWITCH . variavel nonempty_list(caso) option(default) FSWITCH [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## SWITCH 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI VIRG 
##
## Ends in an error in state: 18.
##
## prog -> PROGRAMA LITSTRING declaracao INI . list(comando) FPROGRAMA list(decFunctions) EOF [ # ]
##
## The known suffix of the stack is as follows:
## PROGRAMA LITSTRING declaracao INI 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE APAR LITSTRING WHILE 
##
## Ends in an error in state: 28.
##
## expressao -> expressao . MAIS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . LT expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . GT expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . AND expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> expressao . OR expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT FPAR EQUALS DIV DIFER AND ]
## expressao -> APAR expressao . FPAR [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## APAR expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE APAR WHILE 
##
## Ends in an error in state: 26.
##
## expressao -> APAR . expressao FPAR [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING AND LITSTRING VAR 
##
## Ends in an error in state: 58.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao AND expressao . [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao AND expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING AND WHILE 
##
## Ends in an error in state: 57.
##
## expressao -> expressao AND . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao AND 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING DIFER LITSTRING VAR 
##
## Ends in an error in state: 55.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao DIFER expressao . [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao DIFER expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING DIFER WHILE 
##
## Ends in an error in state: 54.
##
## expressao -> expressao DIFER . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao DIFER 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING DIV WHILE 
##
## Ends in an error in state: 34.
##
## expressao -> expressao DIV . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao DIV 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING DO RETURN LITSTRING FPROGRAMA 
##
## Ends in an error in state: 111.
##
## nonempty_list(comando) -> comando . [ FWHILE FSWITCH FIF FFOR ELSE CASE_DEFAULT CASE ]
## nonempty_list(comando) -> comando . nonempty_list(comando) [ FWHILE FSWITCH FIF FFOR ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## comando 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 81, spurious reduction of production comando_return -> RETURN expressao 
## In state 105, spurious reduction of production comando -> comando_return 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING DO RETURN LITSTRING FSWITCH 
##
## Ends in an error in state: 128.
##
## comando_enquanto -> WHILE expressao DO nonempty_list(comando) . FWHILE [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## WHILE expressao DO nonempty_list(comando) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 81, spurious reduction of production comando_return -> RETURN expressao 
## In state 105, spurious reduction of production comando -> comando_return 
## In state 111, spurious reduction of production nonempty_list(comando) -> comando 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING DO VIRG 
##
## Ends in an error in state: 66.
##
## comando_enquanto -> WHILE expressao DO . nonempty_list(comando) FWHILE [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## WHILE expressao DO 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING EQUALS LITSTRING VAR 
##
## Ends in an error in state: 53.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao EQUALS expressao . [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao EQUALS expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING EQUALS WHILE 
##
## Ends in an error in state: 52.
##
## expressao -> expressao EQUALS . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao EQUALS 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING GT LITSTRING VAR 
##
## Ends in an error in state: 51.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao GT expressao . [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao GT expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING GT WHILE 
##
## Ends in an error in state: 50.
##
## expressao -> expressao GT . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao GT 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING GTE LITSTRING VAR 
##
## Ends in an error in state: 49.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao GTE expressao . [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao GTE expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING GTE WHILE 
##
## Ends in an error in state: 48.
##
## expressao -> expressao GTE . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao GTE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING LT LITSTRING VAR 
##
## Ends in an error in state: 47.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao LT expressao . [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao LT expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING LT WHILE 
##
## Ends in an error in state: 46.
##
## expressao -> expressao LT . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao LT 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING LTE LITSTRING VAR 
##
## Ends in an error in state: 45.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao LTE expressao . [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao LTE expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING LTE WHILE 
##
## Ends in an error in state: 44.
##
## expressao -> expressao LTE . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao LTE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING MAIS LITSTRING VAR 
##
## Ends in an error in state: 41.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao MAIS expressao . [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao MAIS expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING MAIS WHILE 
##
## Ends in an error in state: 40.
##
## expressao -> expressao MAIS . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao MAIS 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING MENOS LITSTRING VAR 
##
## Ends in an error in state: 39.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao MENOS expressao . [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao MENOS expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING MENOS WHILE 
##
## Ends in an error in state: 38.
##
## expressao -> expressao MENOS . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao MENOS 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING MULTI WHILE 
##
## Ends in an error in state: 31.
##
## expressao -> expressao MULTI . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao MULTI 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING OR LITSTRING VAR 
##
## Ends in an error in state: 43.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao OR expressao . [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao OR expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING OR WHILE 
##
## Ends in an error in state: 42.
##
## expressao -> expressao OR . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao OR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING POTEN LITSTRING VAR 
##
## Ends in an error in state: 37.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao POTEN expressao . [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao POTEN expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING POTEN WHILE 
##
## Ends in an error in state: 36.
##
## expressao -> expressao POTEN . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao POTEN 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING RESTO LITSTRING VAR 
##
## Ends in an error in state: 30.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao RESTO expressao . [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao RESTO expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING RESTO WHILE 
##
## Ends in an error in state: 29.
##
## expressao -> expressao RESTO . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## expressao RESTO 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING WHILE 
##
## Ends in an error in state: 65.
##
## comando_enquanto -> WHILE expressao . DO nonempty_list(comando) FWHILE [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
## expressao -> expressao . MAIS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ RESTO POTEN OR MULTI MENOS MAIS LTE LT GTE GT EQUALS DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## WHILE expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE MENOS LITSTRING VAR 
##
## Ends in an error in state: 64.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
## expressao -> MENOS expressao . [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## MENOS expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE MENOS WHILE 
##
## Ends in an error in state: 20.
##
## expressao -> MENOS . expressao [ WHILE VIRG SWITCH SAIDA_LINHA SAIDA RETURN RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FSWITCH FPROGRAMA FPAR FOR FIF FFUNCTION FFOR EQUALS ENTRADA ENTAO END ELSE DO DIV DIFER CASE_DEFAULT CASE AND ]
##
## The known suffix of the stack is as follows:
## MENOS 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE WHILE 
##
## Ends in an error in state: 19.
##
## comando_enquanto -> WHILE . expressao DO nonempty_list(comando) FWHILE [ WHILE SWITCH SAIDA_LINHA SAIDA RETURN IF ID FWHILE FSWITCH FPROGRAMA FOR FIF FFUNCTION FFOR ENTRADA ELSE CASE_DEFAULT CASE ]
##
## The known suffix of the stack is as follows:
## WHILE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING VAR ID DEF BOOL FPAR 
##
## Ends in an error in state: 17.
##
## prog -> PROGRAMA LITSTRING declaracao . INI list(comando) FPROGRAMA list(decFunctions) EOF [ # ]
##
## The known suffix of the stack is as follows:
## PROGRAMA LITSTRING declaracao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 7, spurious reduction of production list(variaveis) -> 
## In state 15, spurious reduction of production list(variaveis) -> variaveis list(variaveis) 
## In state 16, spurious reduction of production declaracao -> VAR list(variaveis) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING VAR ID DEF BOOL WHILE 
##
## Ends in an error in state: 7.
##
## list(variaveis) -> variaveis . list(variaveis) [ INI FPAR ]
##
## The known suffix of the stack is as follows:
## variaveis 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING VAR ID DEF WHILE 
##
## Ends in an error in state: 9.
##
## variaveis -> separated_nonempty_list(VIRG,ID) DEF . tipo [ INI ID FPAR ]
##
## The known suffix of the stack is as follows:
## separated_nonempty_list(VIRG,ID) DEF 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING VAR ID VIRG WHILE 
##
## Ends in an error in state: 5.
##
## separated_nonempty_list(VIRG,ID) -> ID VIRG . separated_nonempty_list(VIRG,ID) [ DEF ]
##
## The known suffix of the stack is as follows:
## ID VIRG 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING VAR ID WHILE 
##
## Ends in an error in state: 4.
##
## separated_nonempty_list(VIRG,ID) -> ID . [ DEF ]
## separated_nonempty_list(VIRG,ID) -> ID . VIRG separated_nonempty_list(VIRG,ID) [ DEF ]
##
## The known suffix of the stack is as follows:
## ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING VAR WHILE 
##
## Ends in an error in state: 3.
##
## declaracao -> VAR . list(variaveis) [ INI ]
##
## The known suffix of the stack is as follows:
## VAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING WHILE 
##
## Ends in an error in state: 2.
##
## prog -> PROGRAMA LITSTRING . declaracao INI list(comando) FPROGRAMA list(decFunctions) EOF [ # ]
##
## The known suffix of the stack is as follows:
## PROGRAMA LITSTRING 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA WHILE 
##
## Ends in an error in state: 1.
##
## prog -> PROGRAMA . LITSTRING declaracao INI list(comando) FPROGRAMA list(decFunctions) EOF [ # ]
##
## The known suffix of the stack is as follows:
## PROGRAMA 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: WHILE 
##
## Ends in an error in state: 0.
##
## prog' -> . prog [ # ]
##
## The known suffix of the stack is as follows:
## 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

