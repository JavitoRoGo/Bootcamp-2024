import Foundation

//: ## Suma de los cuadrados
//: Calcular la suma total del cuadrado de los números hasta N

let num = Int.random(in: 1...1000)
var suma = 0

for i in 1...num {
	suma += i*i
}

print("La suma de los cuadrados de los números de 1 a \(num) es \(suma)")

print("Fin")
