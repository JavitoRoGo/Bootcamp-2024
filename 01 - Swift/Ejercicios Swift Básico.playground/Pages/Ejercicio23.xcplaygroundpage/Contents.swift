import Foundation

//: ## Ejercicio 23
//: A partir de una constante, establece si el número es par o impar.

let num = Int.random(in: Int.min...Int.max)

if num % 2 == 0 {
	print("El número \(num) es par")
} else {
	print("El número \(num) es impar")
}
