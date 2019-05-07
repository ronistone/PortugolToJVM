algoritmo "micro03"
    /* Função : Faça um algoritmo que receba um número e diga se este

    número está no intervalo entre 100 e 200.

    */
var
    numero: inteiro
início
    escreva("Digite um número: ")
    leia(numero)
    se numero >= 100 então
        se numero <= 200 então
            escreva("O número está no intervalo entre 100 e 200")
        senão
            escreva("O número não está no intervalo entre 100 e 200")
        fim_se
    senão
        escreva("O número não está no intervalo entre 100 e 200")
    fim_se
fim_algoritmo