import Foundation

//: ## Números divisibles por 3
//: El valor N se obtiene de manera aleatoria como un entero, limitado a 10000 para que sea "ejecutable" en un tiempo razonable.
//: Uso de bucle for-in hasta N+1 para calcular la suma.

let num = Int.random(in: 1...1000000)

var count = 0

for i in 1...num where i % 3 == 0 {
	count += 1
}

print("Hay \(count) números divisibles por 3 entre 1 y \(num)")

print("Fin")
