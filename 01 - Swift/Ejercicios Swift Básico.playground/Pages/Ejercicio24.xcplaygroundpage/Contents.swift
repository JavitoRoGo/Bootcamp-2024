import Foundation

//: ## Ejercicio 24
//: A partir de una constante, genera un flujo capaz de imprimir la tabla de multiplicar hasta el 10 de dicho número.

//: Uso de bucle `for-in`.

let num = Int.random(in: 1...1000)

for i in 1...10 {
	print("\(num) x \(i) = \(num*i)")
}
