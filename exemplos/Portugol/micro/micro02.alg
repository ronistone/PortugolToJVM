algoritmo "micro02"
    /* Função : Escrever um algoritmo que leia dois valores inteiro

    distintos e informe qual é o maior.

    */
var
    num1, num2: inteiro
início
    escreva("Digite o primeiro número: ")
    leia(num1)
    escreva("Digite o segundo número: ")
    leia(num2)
    se num1 > num2 então
        escreva("O primeiro número ",num1," é maior que o segundo",num2)
    senão
        escreva("O segundo número",num2," é maior que o primeiro",num1)
    fim_se
fim_algoritmo