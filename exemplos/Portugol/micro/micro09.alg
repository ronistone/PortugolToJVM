algoritmo "micro09"
var
    preco, venda, novo_preco: real
início
    escreva("Digite o preco: ")
    leia(preco)
    escreva("Digite a venda: ")
    leia(venda)
    se (venda < 500.0) OU (preco < 30.0)
    então novo_preco <- preco + 10.0/100.0 * preco
    senão se (venda >= 500.0 E venda < 1200.0) ou
             (preco >= 30.0 e preco < 80.0)
        então novo_preco <- preco + 15.0/100.0 * preco
        senão se venda >= 1200.0 ou preco >= 80.0
            então novo_preco <- preco - 20.0/100.0 * preco
            fim_se
        fim_se
    fim_se
    escreval("O novo preco é ", novo_preco)
fim_algoritmo