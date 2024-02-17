
import Foundation

//: ## Ejercicio 22
//: A partir de una constante **numero**, verifica si dicho valor es a la vez múltiplo de 3 y de 5.

//: La comprobación de más de una condición a la vez en una sentencia `if` se realiza con el operador lógico `AND`.

let numero = Int.random(in: 1...1000)

if numero % 3 == 0 && numero % 5 == 0 {
	print("\(numero) es a la vez múltiplo de 3 y de 5")
} else {
	print("\(numero) no es a la vez múltiplo de 3 y de 5")
	
}
