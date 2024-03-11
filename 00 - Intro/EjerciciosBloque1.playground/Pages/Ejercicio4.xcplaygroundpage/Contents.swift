import Foundation

//: ## Determinar si un número entero es par o impar
//: Para ello se calcula el módulo o resto de división, en este caso dividiendo entre 2.

let num = Int.random(in: Int.min...Int.max)

if num % 2 == 0 {
	print("El número \(num) es par")
} else {
	print("El número \(num) es impar")
}

print("Fin")
