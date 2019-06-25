algoritmo "micro05"
    /* Função : Escrever um algoritmo que leia o nome e o sexo de 56
    pessoas e informe o nome e se ela é homem ou mulher.
    No final informe o total de homens e de mulheres.

    */
var
    nome, sexo: caractere
    x, h, m: inteiro
início
    h <- 0
    m <- 0
    para x de 1 até 5 faça
        escreva("Digite o nome: ")
        leia(nome)
        escreva("H - Homem ou M - Mulher: ")
        leia(sexo)
        escolha sexo
            caso "H"
                h <- h + 1
            caso "M"
                m <- m + 1
            outrocaso
                escreva("Sexo só pode ser H ou M!")

        fim_escolha
    fim_para
    escreva("Foram inseridos",h," Homens")
    escreva("Foram inseridos",m," Mulheres")
fim_algoritmo