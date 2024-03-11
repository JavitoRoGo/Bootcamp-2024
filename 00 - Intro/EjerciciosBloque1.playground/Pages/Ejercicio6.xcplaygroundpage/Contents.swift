import Foundation

//: ## Determinar si un número es 0, positivo o negativo
//: Uso de flujo if-else.

let num = Int.random(in: Int.min...Int.max)

if num == 0 {
	print("El número es cero")
} else if num > 0 {
	print("El número \(num) es positivo")
} else {
	print("El número \(num) es negativo")
}

print("Fin")
