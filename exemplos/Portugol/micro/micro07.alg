algoritmo "micro07"
    /* Função : Faça um algoritmo que receba N números e mostre
    positivo, negativo ou zero para cada número.

    */
var
    programa, numero: inteiro
    opc: caractere
início
    programa <- 1
    enquanto programa = 1 faça
        escreva("Digite um número: ")
        leia(numero)
        se numero > 0 então
            escreval("Positivo")
        senão
            se numero = 0 então
                escreval("O número é igual a 0")
            fim_se
            se numero < 0 então
                escreval("Negativo")
            fim_se
        fim_se

        escreva("Deseja finalizar? (S/N) ")
        leia(opc)
        se opc = "S" então
            programa <- 0
        fim_se
    fim_enquanto
fim_algoritmo