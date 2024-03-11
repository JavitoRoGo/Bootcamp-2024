import Foundation

//: ## Ejercicio 15
//: Calcula el resultado de elevar un número x a una potencia y.

//: Uso de bucle `for-in` para multiplicar la base por sí misma el número de veces que indique el exponente.

let x = Int.random(in: 1...20)
let y = Int.random(in: 1...10)
var result = 1

for _ in 1...y {
	result *= x
}

print("\(x) elevado a \(y) es \(result)")
