import Foundation

//: ## Ejercicio 27
//: Dada una constante crea un algoritmo capaz de calcular el factorial de un número indicado.

let num = Int.random(in: 1...20)

var factorial = 1

for i in 1...num {
	factorial *= i
}

print("El factorial de \(num) es \(factorial)")
