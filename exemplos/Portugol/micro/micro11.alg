algoritmo "micro11"
    /* Função : recebe um número e verifica se o número é positivo, nulo

    ou negativo com auxilio de uma função.

    */
var
    numero: inteiro
    x: inteiro
início
    escreva("Digite um número: ")
    leia(numero)
    x <- verifica(numero)
    se x = 1
        então escreval("Número positivo")
    senão se x = 0
        então escreval("Zero")
        senão escreval("Número negativo")
        fim_se
    fim_se
fim_algoritmo

função verifica(n: inteiro) : inteiro
    var
        res: inteiro
        x : lógico
    início
        x <- verdadeiro
        se n > 0 então
            res <- 1
        senão se n < 0
            então res <- -1
            senão res <- 0
            fim_se
        fim_se
        retorne res
fim_função verifica