prog: PROGRAMA LITSTRING FUNCTION ID APAR FPAR INI FFUNCTION WHILE 
##
## Ends in an error in state: 102.
##
## list(decFunctions) -> decFunctions . list(decFunctions) [ INI ]
##
## The known suffix of the stack is as follows:
## decFunctions 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING FUNCTION ID APAR FPAR INI ID ATRIB ID FPROGRAMA 
##
## Ends in an error in state: 93.
##
## decFunctions -> FUNCTION ID APAR declaracao FPAR declaracao INI list(comando) . FFUNCTION [ INI FUNCTION ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR declaracao FPAR declaracao INI list(comando) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 78, spurious reduction of production comando_atribuicao -> variavel ATRIB expressao 
## In state 86, spurious reduction of production comando -> comando_atribuicao 
## In state 95, spurious reduction of production list(comando) -> 
## In state 96, spurious reduction of production list(comando) -> comando list(comando) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING FUNCTION ID APAR FPAR INI VIRG 
##
## Ends in an error in state: 23.
##
## decFunctions -> FUNCTION ID APAR declaracao FPAR declaracao INI . list(comando) FFUNCTION [ INI FUNCTION ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR declaracao FPAR declaracao INI 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING FUNCTION ID APAR FPAR VAR FUNCTION 
##
## Ends in an error in state: 22.
##
## decFunctions -> FUNCTION ID APAR declaracao FPAR declaracao . INI list(comando) FFUNCTION [ INI FUNCTION ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR declaracao FPAR declaracao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 3, spurious reduction of production list(variaveis) -> 
## In state 15, spurious reduction of production declaracao -> VAR list(variaveis) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING FUNCTION ID APAR FPAR WHILE 
##
## Ends in an error in state: 21.
##
## decFunctions -> FUNCTION ID APAR declaracao FPAR . declaracao INI list(comando) FFUNCTION [ INI FUNCTION ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR declaracao FPAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING FUNCTION ID APAR VAR INI 
##
## Ends in an error in state: 20.
##
## decFunctions -> FUNCTION ID APAR declaracao . FPAR declaracao INI list(comando) FFUNCTION [ INI FUNCTION ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR declaracao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 3, spurious reduction of production list(variaveis) -> 
## In state 15, spurious reduction of production declaracao -> VAR list(variaveis) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING FUNCTION ID APAR WHILE 
##
## Ends in an error in state: 19.
##
## decFunctions -> FUNCTION ID APAR . declaracao FPAR declaracao INI list(comando) FFUNCTION [ INI FUNCTION ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING FUNCTION ID WHILE 
##
## Ends in an error in state: 18.
##
## decFunctions -> FUNCTION ID . APAR declaracao FPAR declaracao INI list(comando) FFUNCTION [ INI FUNCTION ]
##
## The known suffix of the stack is as follows:
## FUNCTION ID 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING FUNCTION WHILE 
##
## Ends in an error in state: 17.
##
## decFunctions -> FUNCTION . ID APAR declaracao FPAR declaracao INI list(comando) FFUNCTION [ INI FUNCTION ]
##
## The known suffix of the stack is as follows:
## FUNCTION 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI ENTRADA APAR WHILE 
##
## Ends in an error in state: 73.
##
## comando_entrada -> ENTRADA APAR . separated_nonempty_list(VIRG,expressao) FPAR [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
##
## The known suffix of the stack is as follows:
## ENTRADA APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI ENTRADA WHILE 
##
## Ends in an error in state: 72.
##
## comando_entrada -> ENTRADA . APAR separated_nonempty_list(VIRG,expressao) FPAR [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
##
## The known suffix of the stack is as follows:
## ENTRADA 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI FPROGRAMA WHILE 
##
## Ends in an error in state: 100.
##
## prog -> PROGRAMA LITSTRING declaracao list(decFunctions) INI list(comando) FPROGRAMA . EOF [ # ]
##
## The known suffix of the stack is as follows:
## PROGRAMA LITSTRING declaracao list(decFunctions) INI list(comando) FPROGRAMA 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI ID ATRIB ID FFUNCTION 
##
## Ends in an error in state: 99.
##
## prog -> PROGRAMA LITSTRING declaracao list(decFunctions) INI list(comando) . FPROGRAMA EOF [ # ]
##
## The known suffix of the stack is as follows:
## PROGRAMA LITSTRING declaracao list(decFunctions) INI list(comando) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 78, spurious reduction of production comando_atribuicao -> variavel ATRIB expressao 
## In state 86, spurious reduction of production comando -> comando_atribuicao 
## In state 95, spurious reduction of production list(comando) -> 
## In state 96, spurious reduction of production list(comando) -> comando list(comando) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI ID ATRIB ID FWHILE 
##
## Ends in an error in state: 95.
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
## In state 78, spurious reduction of production comando_atribuicao -> variavel ATRIB expressao 
## In state 86, spurious reduction of production comando -> comando_atribuicao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI ID ATRIB LITSTRING VIRG 
##
## Ends in an error in state: 78.
##
## comando_atribuicao -> variavel ATRIB expressao . [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
## expressao -> expressao . MAIS expressao [ WHILE SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FIF FFUNCTION EQUALS ENTRADA ELSE DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ WHILE SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FIF FFUNCTION EQUALS ENTRADA ELSE DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ WHILE SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FIF FFUNCTION EQUALS ENTRADA ELSE DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ WHILE SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FIF FFUNCTION EQUALS ENTRADA ELSE DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ WHILE SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FIF FFUNCTION EQUALS ENTRADA ELSE DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ WHILE SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FIF FFUNCTION EQUALS ENTRADA ELSE DIV DIFER AND ]
## expressao -> expressao . LT expressao [ WHILE SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FIF FFUNCTION EQUALS ENTRADA ELSE DIV DIFER AND ]
## expressao -> expressao . GT expressao [ WHILE SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FIF FFUNCTION EQUALS ENTRADA ELSE DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ WHILE SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FIF FFUNCTION EQUALS ENTRADA ELSE DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ WHILE SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FIF FFUNCTION EQUALS ENTRADA ELSE DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ WHILE SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FIF FFUNCTION EQUALS ENTRADA ELSE DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ WHILE SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FIF FFUNCTION EQUALS ENTRADA ELSE DIV DIFER AND ]
## expressao -> expressao . AND expressao [ WHILE SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FIF FFUNCTION EQUALS ENTRADA ELSE DIV DIFER AND ]
## expressao -> expressao . OR expressao [ WHILE SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FIF FFUNCTION EQUALS ENTRADA ELSE DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## variavel ATRIB expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI ID ATRIB WHILE 
##
## Ends in an error in state: 77.
##
## comando_atribuicao -> variavel ATRIB . expressao [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
##
## The known suffix of the stack is as follows:
## variavel ATRIB 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI ID WHILE 
##
## Ends in an error in state: 76.
##
## comando_atribuicao -> variavel . ATRIB expressao [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
##
## The known suffix of the stack is as follows:
## variavel 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI IF LITSTRING ENTAO ID ATRIB ID ELSE ID ATRIB ID FWHILE 
##
## Ends in an error in state: 89.
##
## comando_se -> IF expressao ENTAO nonempty_list(comando) option(__anonymous_0) . FIF [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
##
## The known suffix of the stack is as follows:
## IF expressao ENTAO nonempty_list(comando) option(__anonymous_0) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 78, spurious reduction of production comando_atribuicao -> variavel ATRIB expressao 
## In state 86, spurious reduction of production comando -> comando_atribuicao 
## In state 87, spurious reduction of production nonempty_list(comando) -> comando 
## In state 81, spurious reduction of production option(__anonymous_0) -> ELSE nonempty_list(comando) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI IF LITSTRING ENTAO ID ATRIB ID ELSE VIRG 
##
## Ends in an error in state: 80.
##
## option(__anonymous_0) -> ELSE . nonempty_list(comando) [ FIF ]
##
## The known suffix of the stack is as follows:
## ELSE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI IF LITSTRING ENTAO ID ATRIB ID FWHILE 
##
## Ends in an error in state: 79.
##
## comando_se -> IF expressao ENTAO nonempty_list(comando) . option(__anonymous_0) FIF [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
##
## The known suffix of the stack is as follows:
## IF expressao ENTAO nonempty_list(comando) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 78, spurious reduction of production comando_atribuicao -> variavel ATRIB expressao 
## In state 86, spurious reduction of production comando -> comando_atribuicao 
## In state 87, spurious reduction of production nonempty_list(comando) -> comando 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI IF LITSTRING ENTAO VIRG 
##
## Ends in an error in state: 71.
##
## comando_se -> IF expressao ENTAO . nonempty_list(comando) option(__anonymous_0) FIF [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
##
## The known suffix of the stack is as follows:
## IF expressao ENTAO 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI IF LITSTRING WHILE 
##
## Ends in an error in state: 70.
##
## comando_se -> IF expressao . ENTAO nonempty_list(comando) option(__anonymous_0) FIF [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
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
## Ends in an error in state: 69.
##
## comando_se -> IF . expressao ENTAO nonempty_list(comando) option(__anonymous_0) FIF [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
##
## The known suffix of the stack is as follows:
## IF 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SAIDA APAR LITSTRING VIRG WHILE 
##
## Ends in an error in state: 67.
##
## separated_nonempty_list(VIRG,expressao) -> expressao VIRG . separated_nonempty_list(VIRG,expressao) [ FPAR ]
##
## The known suffix of the stack is as follows:
## expressao VIRG 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SAIDA APAR LITSTRING WHILE 
##
## Ends in an error in state: 66.
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

prog: PROGRAMA LITSTRING INI SAIDA APAR WHILE 
##
## Ends in an error in state: 63.
##
## comando_saida -> SAIDA APAR . separated_nonempty_list(VIRG,expressao) FPAR [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
##
## The known suffix of the stack is as follows:
## SAIDA APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI SAIDA WHILE 
##
## Ends in an error in state: 62.
##
## comando_saida -> SAIDA . APAR separated_nonempty_list(VIRG,expressao) FPAR [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
##
## The known suffix of the stack is as follows:
## SAIDA 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI VIRG 
##
## Ends in an error in state: 98.
##
## prog -> PROGRAMA LITSTRING declaracao list(decFunctions) INI . list(comando) FPROGRAMA EOF [ # ]
##
## The known suffix of the stack is as follows:
## PROGRAMA LITSTRING declaracao list(decFunctions) INI 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE APAR LITSTRING WHILE 
##
## Ends in an error in state: 30.
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
## expressao -> APAR expressao . FPAR [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## APAR expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE APAR WHILE 
##
## Ends in an error in state: 28.
##
## expressao -> APAR . expressao FPAR [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## APAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING AND LITSTRING VAR 
##
## Ends in an error in state: 59.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao AND expressao . [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao AND expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING AND WHILE 
##
## Ends in an error in state: 58.
##
## expressao -> expressao AND . expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao AND 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING DIFER LITSTRING VAR 
##
## Ends in an error in state: 56.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao DIFER expressao . [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao DIFER expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING DIFER WHILE 
##
## Ends in an error in state: 55.
##
## expressao -> expressao DIFER . expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao DIFER 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING DIV WHILE 
##
## Ends in an error in state: 35.
##
## expressao -> expressao DIV . expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao DIV 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING DO ID ATRIB ID FIF 
##
## Ends in an error in state: 91.
##
## comando_enquanto -> WHILE expressao DO nonempty_list(comando) . FWHILE [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
##
## The known suffix of the stack is as follows:
## WHILE expressao DO nonempty_list(comando) 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 78, spurious reduction of production comando_atribuicao -> variavel ATRIB expressao 
## In state 86, spurious reduction of production comando -> comando_atribuicao 
## In state 87, spurious reduction of production nonempty_list(comando) -> comando 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING DO ID ATRIB ID FPROGRAMA 
##
## Ends in an error in state: 87.
##
## nonempty_list(comando) -> comando . [ FWHILE FIF ELSE ]
## nonempty_list(comando) -> comando . nonempty_list(comando) [ FWHILE FIF ELSE ]
##
## The known suffix of the stack is as follows:
## comando 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 78, spurious reduction of production comando_atribuicao -> variavel ATRIB expressao 
## In state 86, spurious reduction of production comando -> comando_atribuicao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING DO VIRG 
##
## Ends in an error in state: 61.
##
## comando_enquanto -> WHILE expressao DO . nonempty_list(comando) FWHILE [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
##
## The known suffix of the stack is as follows:
## WHILE expressao DO 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING EQUALS LITSTRING VAR 
##
## Ends in an error in state: 54.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao EQUALS expressao . [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao EQUALS expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING EQUALS WHILE 
##
## Ends in an error in state: 53.
##
## expressao -> expressao EQUALS . expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao EQUALS 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING GT LITSTRING VAR 
##
## Ends in an error in state: 52.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao GT expressao . [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao GT expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING GT WHILE 
##
## Ends in an error in state: 51.
##
## expressao -> expressao GT . expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao GT 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING GTE LITSTRING VAR 
##
## Ends in an error in state: 50.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao GTE expressao . [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao GTE expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING GTE WHILE 
##
## Ends in an error in state: 49.
##
## expressao -> expressao GTE . expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao GTE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING LT LITSTRING VAR 
##
## Ends in an error in state: 48.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao LT expressao . [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao LT expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING LT WHILE 
##
## Ends in an error in state: 47.
##
## expressao -> expressao LT . expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao LT 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING LTE LITSTRING VAR 
##
## Ends in an error in state: 46.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao LTE expressao . [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao LTE expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING LTE WHILE 
##
## Ends in an error in state: 45.
##
## expressao -> expressao LTE . expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao LTE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING MAIS LITSTRING VAR 
##
## Ends in an error in state: 42.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao MAIS expressao . [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao MAIS expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING MAIS WHILE 
##
## Ends in an error in state: 41.
##
## expressao -> expressao MAIS . expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao MAIS 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING MENOS LITSTRING VAR 
##
## Ends in an error in state: 40.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao MENOS expressao . [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao MENOS expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING MENOS WHILE 
##
## Ends in an error in state: 39.
##
## expressao -> expressao MENOS . expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao MENOS 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING MULTI WHILE 
##
## Ends in an error in state: 33.
##
## expressao -> expressao MULTI . expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao MULTI 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING OR LITSTRING VAR 
##
## Ends in an error in state: 44.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao OR expressao . [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao OR expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING OR WHILE 
##
## Ends in an error in state: 43.
##
## expressao -> expressao OR . expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao OR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING POTEN LITSTRING VAR 
##
## Ends in an error in state: 38.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao POTEN expressao . [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao POTEN expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING POTEN WHILE 
##
## Ends in an error in state: 37.
##
## expressao -> expressao POTEN . expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao POTEN 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING RESTO LITSTRING VAR 
##
## Ends in an error in state: 32.
##
## expressao -> expressao . MAIS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MENOS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . MULTI expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIV expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . RESTO expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao RESTO expressao . [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . POTEN expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GT expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . LTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . GTE expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . EQUALS expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . DIFER expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . AND expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
## expressao -> expressao . OR expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao RESTO expressao 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING RESTO WHILE 
##
## Ends in an error in state: 31.
##
## expressao -> expressao RESTO . expressao [ WHILE VIRG SAIDA RESTO POTEN OR MULTI MENOS MAIS LTE LT IF ID GTE GT FWHILE FPROGRAMA FPAR FIF FFUNCTION EQUALS ENTRADA ENTAO ELSE DO DIV DIFER AND ]
##
## The known suffix of the stack is as follows:
## expressao RESTO 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING INI WHILE LITSTRING WHILE 
##
## Ends in an error in state: 60.
##
## comando_enquanto -> WHILE expressao . DO nonempty_list(comando) FWHILE [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
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

prog: PROGRAMA LITSTRING INI WHILE WHILE 
##
## Ends in an error in state: 24.
##
## comando_enquanto -> WHILE . expressao DO nonempty_list(comando) FWHILE [ WHILE SAIDA IF ID FWHILE FPROGRAMA FIF FFUNCTION ENTRADA ELSE ]
##
## The known suffix of the stack is as follows:
## WHILE 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING VAR FPAR 
##
## Ends in an error in state: 16.
##
## prog -> PROGRAMA LITSTRING declaracao . list(decFunctions) INI list(comando) FPROGRAMA EOF [ # ]
##
## The known suffix of the stack is as follows:
## PROGRAMA LITSTRING declaracao 
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 3, spurious reduction of production list(variaveis) -> 
## In state 15, spurious reduction of production declaracao -> VAR list(variaveis) 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING VAR ID DEF CARACTER WHILE 
##
## Ends in an error in state: 7.
##
## list(variaveis) -> variaveis . list(variaveis) [ INI FUNCTION FPAR ]
##
## The known suffix of the stack is as follows:
## variaveis 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING VAR ID DEF WHILE 
##
## Ends in an error in state: 9.
##
## variaveis -> separated_nonempty_list(VIRG,ID) DEF . tipo [ INI ID FUNCTION FPAR ]
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
## declaracao -> VAR . list(variaveis) [ INI FUNCTION FPAR ]
##
## The known suffix of the stack is as follows:
## VAR 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA LITSTRING WHILE 
##
## Ends in an error in state: 2.
##
## prog -> PROGRAMA LITSTRING . declaracao list(decFunctions) INI list(comando) FPROGRAMA EOF [ # ]
##
## The known suffix of the stack is as follows:
## PROGRAMA LITSTRING 
##

<YOUR SYNTAX ERROR MESSAGE HERE>

prog: PROGRAMA WHILE 
##
## Ends in an error in state: 1.
##
## prog -> PROGRAMA . LITSTRING declaracao list(decFunctions) INI list(comando) FPROGRAMA EOF [ # ]
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

