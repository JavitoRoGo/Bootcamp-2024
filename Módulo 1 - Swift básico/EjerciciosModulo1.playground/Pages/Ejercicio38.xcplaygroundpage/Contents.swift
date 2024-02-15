import Foundation

//: ## Ejercicio 38
//: A partir de una cadena con una sola palabra en una constante, crea un algoritmo que diga si una cadena contiene un valor que sea palíndromo.

//: Uso de método `.compare` para comprobar la igualdad de la cadena con su propia versión invertida.

let cadena = "salas"

if cadena.compare(String(cadena.reversed())) == .orderedSame {
	print("\(cadena) es un palíndromo")
} else {
	print("\(cadena) no es un palíndromo")
}
