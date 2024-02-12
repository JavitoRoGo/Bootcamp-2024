import Foundation

//: ## Ejercicio 5
//: Dado un rango de números enteros de A a B, encuentra la forma de determinar si un número N está en el rango entre A y B (inclusive).

//: Para comprobar si un número está dentro de un rango podemos hacerlo de dos formas:
//: 1. Usar la sentencia `if` para comparar con los límites inferior y superior.
//: 2. Crear un rango con los límites dados y usar el método `contains`.

let lowerBound = 39
let upperBound = 34798
let num = 8423

//: 1. `if-else`

if num < lowerBound || num > upperBound {
	print("El número \(num) está fuera del rango \(lowerBound)-\(upperBound)")
} else {
	print("El número \(num) está dentro del rango \(lowerBound)-\(upperBound)")
}

//: 2. Rango y `contains`

let range = lowerBound...upperBound
if range.contains(num) {
	print("El número \(num) está dentro del rango \(lowerBound)-\(upperBound)")
} else {
	print("El número \(num) está fuera del rango \(lowerBound)-\(upperBound)")
}
