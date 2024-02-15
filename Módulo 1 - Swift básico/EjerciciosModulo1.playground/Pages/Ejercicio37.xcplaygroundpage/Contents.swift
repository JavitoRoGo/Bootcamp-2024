import Foundation

//: ## Ejercicio 37
//: A partir de una constante **numero**, haz un bucle que pueda imprimir los 10 primeros múltiplos de dicho número.

//: Los múltiplos se obtienen igual que se hizo en el ejercicio para la tabla de multiplicar.

let numero = Int.random(in: 1...1000)

var multiplos = [Int]()

for i in 1...10 {
	multiplos.append(numero * i)
}

print("Los 10 primeros múltiplos de \(numero) son: \(multiplos)")
