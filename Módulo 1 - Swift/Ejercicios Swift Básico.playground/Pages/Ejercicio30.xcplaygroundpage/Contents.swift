import Foundation

//: ## Ejercicio 30
//: A partir de un número constante, crea un flujo capaz de discernir mediante mensajes si un número es positivo, negativo o cero.

let num = Int.random(in: -10000...10000)

if num == 0 {
	print("El número es cero")
} else if num > 0 {
	print("El número \(num) es positivo")
} else {
	print("El número \(num) es negativo")
}
