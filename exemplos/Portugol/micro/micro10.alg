algoritmo "micro10"
    /* Função : recebe um número e calcula recursivamente o fatorial
    desse número.
    */
var
    numero: inteiro
    fat: inteiro
início
    escreva("Digite um número: ")
    leia(numero)
    fat <- fatorial(numero)
    escreva("O fatorial de ")
    escreva(numero)
    escreva(" é ")
    escreval(fat)
fim_algoritmo

função fatorial(n: inteiro) : inteiro
    início
        se n <= 0 então
            retorne 1
        senão
            retorne n * fatorial(n-1)
        fim_se
fim_função fatorial