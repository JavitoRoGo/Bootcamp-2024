import Foundation

//: ## Conversión de temperatura de grados Celsius a grados Fahrenheit
//: Se genera un valor de temperatura aleatorio como grados Celsius y se usa una fórmula matemática para su conversión en grados Fahrenheit.
//: Se imprime el resultado con los dos valores.

let celsius = Double.random(in: -40...50)

let fahrenheit = celsius * 9 / 5 + 32
print("\(celsius)ºC = \(fahrenheit)ºF")

print("Fin")
