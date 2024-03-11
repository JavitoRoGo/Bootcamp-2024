import Foundation

//: ## Palíndromo
//: Comprobar si un número entero positivo es un palíndromo
//: Se plantean dos alternativas de comparación: con el número como cadena, o esa cadena como array

let num = Int.random(in: 10...Int.max)

let cadena = String(num)
let array = Array(cadena)

if array == array.reversed() {
	print("\(num) es un palíndromo")
} else {
	print("\(num) no es un palíndromo")
}

if cadena.compare(String(cadena.reversed())) == .orderedSame {
	print("\(num) es un palíndromo")
} else {
	print("\(num) no es un palíndromo")
}

print("Fin")
