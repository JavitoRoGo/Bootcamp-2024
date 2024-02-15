import Foundation

//: ## Ejercicio 50
//:Calcula la raíz cuadrada de un número sin usar la función predefinida.

let num = Double(Int.random(in: 1...1000))

var x0 = num / 2
var x1 = 1.0

repeat {
	x1 = 1/2 * (x0 + (num/x0))
	x0 = x1
} while abs(x0 - num/x0) > 0.001

print("La raíz cuadrada de \(num) es \(x1)")
