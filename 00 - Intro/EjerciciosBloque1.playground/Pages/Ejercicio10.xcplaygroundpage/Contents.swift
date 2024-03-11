import Foundation

//: ## Cálculo del factorial de un número entre 1 y 20
//: Uso de bucle for-in para el cálculo de la multiplicación acumulada.

let num = Int.random(in: 1...20)
var factorial = 1

for i in 1..<num+1 {
	factorial *= i
}

print("El factorial de \(num) es \(factorial)")

print("Fin")
