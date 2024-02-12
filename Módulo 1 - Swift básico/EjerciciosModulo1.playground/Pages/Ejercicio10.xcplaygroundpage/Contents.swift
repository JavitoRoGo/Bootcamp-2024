import Foundation

//: ## Ejercicio 10
//: Dado un número en una constante, determina si es un cuadrado perfecto.

//: Uso de la función `sqrt` para obtener la raíz cuadrada. Para ver si este resultado es exacto (módulo igual a 0 al dividir por 1) se usa la función `truncatingRemainder`, propia del tipo `Double`, que es el tipo que usa la función `sqrt`.
//: El operador del módulo solo está disponible para el tipo `Int`.

let num = Int.random(in: 1...1000000)

let sqr = sqrt(Double(num))

if sqr.truncatingRemainder(dividingBy: 1) == 0 {
	print("El número \(num) es cuadrado perfecto de \(sqr.formatted(.number.precision(.fractionLength(0))))")
} else {
	print("El número \(num) no es un cuadrado perfecto")
}
