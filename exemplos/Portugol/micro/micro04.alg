algoritmo "micro04"
    /*
    Função: Ler 5 números e ao final informar quantos número(s)
    est(á)ão no intervalo entre 10 (inclusive) e 150 (inclusive).
    */
var
    x, num, intervalo: inteiro
início
    para x de 1 até 5 faça
        escreva("Digite um número: ")
        leia(num)
        se num >= 10 então
            se num <= 150 então
                intervalo <- intervalo + 1
            fim_se
        fim_se
    fim_para
    escreva("Ao total, foram digitados ",intervalo," números no intervalo entre 10 e 150")
fim_algoritmo