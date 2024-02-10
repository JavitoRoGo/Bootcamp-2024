import Foundation

//: ## Sumatorio de los N primeros números naturales
//: El valor N se obtiene de manera aleatoria como un entero, limitado a 10000 para que sea "ejecutable" en un tiempo razonable.
//: Uso de bucle for-in hasta N+1 para calcular la suma.

let num = Int.random(in: 0...10000)

var suma = 0

for i in 1 ..< num + 1 {
	suma += i
}

print("La suma de los \(num) primeros números es \(suma)")

print("Fin")
