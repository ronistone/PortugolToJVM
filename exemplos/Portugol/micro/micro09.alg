algoritmo "micro09"
var
    preco, venda, novo_preco: real
início
    escreva("Digite o preco: ")
    leia(preco)
    escreva("Digite a venda: ")
    leia(venda)
    se (venda < 500) OU (preco < 30)
    então novo_preco <- preco + 10/100 * preco
    senão se (vendas >= 500 E venda < 1200) ou
             (preco >= 30 e preco < 80)
        então novo_preco <- preco + 15/100 * preco
        senão se venda >= 1200 ou preco >= 80
            então novo_preco <- preco - 20/100 * preco
            fim_se
        fim_se
    fim_se
    escreval("O novo preco é ", novo_preco)
fim_algoritmo