algoritmo "micro01"
    /*
    Função: Ler uma temperatura em graus Celsius e apresentá-la
    convertida em graus Fahrenheit. A fórmula de conversão é:

    F=(9*C+160) / 5,

    sendo F a temperatura em Fahrenheit e C a temperatura em
    Celsius.
    */
var
    cel, far: real
início
    escreva(" Tabela de conversão: Celsius -> Fahrenheit")
    escreva("Digite a temperatura em Celsius: ")
    leia(cel)
    far <- (9.0*cel+160.0)/5.0
    escreva("A nova temperatura é: ",far," F")
fim_algoritmo