algoritmo "nano12"
var
	n, m, x : inteiro
início
	n <- 1
	m <- 2
	x <- 5
	enquanto x > n faça
		se n = m então
			escreva(n)
		senão
			escreva(0)
		fim_se
		x <- x - 1
	fim_enquanto
fim_algoritmo
