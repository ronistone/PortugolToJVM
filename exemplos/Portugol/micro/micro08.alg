algoritmo "micro08"
var
    numero: inteiro
início
    numero <- 1
    enquanto numero <> 0 faça
        escreva("Digite um número: ")
        leia(numero)
        se (numero > 10) então
            escreval("O número ",numero," é maior que 10")
        senão
            escreval("O número ",numero," é menor que 10")
        fim_se
    fim_enquanto
fim_algoritmo