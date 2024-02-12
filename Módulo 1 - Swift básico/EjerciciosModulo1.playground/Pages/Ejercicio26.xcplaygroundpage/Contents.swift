import Foundation

//: ## Ejercicio 26
//: A partir de una constante, realiza un algoritmo capaz de devolver el total de números de la secuencia de Fibonacci, en orden.

let num = Int.random(in: 3...100)

var i = 1
var j = 2
var fibonacci = [i,j]

for _ in 1...num-2 {
	(i, j) = (j, i + j)
	fibonacci.append(j)
}

print("La secuencia de Fibonacci de los \(num) primeros números es \(fibonacci)")
