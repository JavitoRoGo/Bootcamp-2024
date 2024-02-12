import Foundation

//: ## Ejercicio 17
//: Usando un bucle `while` genera un algoritmo que sume 10 números aleatorios y devuelva su resultado.

//: Un bucle `while` debe llevar una condición de terminación real para evitar así crear un bucle infinito.
//: Para este caso se define una variable a modo de contador, para salir del bucle una vez el contador llegue a 10.

var sum = 0
var contador = 0

while contador < 10 {
	let num = Int.random(in: -1000...1000)
	sum += num
	contador += 1
}

print("La suma total es \(sum)")
