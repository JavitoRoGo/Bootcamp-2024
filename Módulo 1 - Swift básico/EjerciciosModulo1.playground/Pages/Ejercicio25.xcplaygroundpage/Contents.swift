import Foundation

//: ## Ejercicio 25
//: Realiza un programa que sea capaz de determinar si un número entero positivo cualquiera es un número primo o no.

//: Uso de flujo `if-else` y bucle `repeat-while`.
//: Uso de variable intermedia de tipo `Bool` para controlar el flujo del `repeat`.

let num = Int.random(in: 1...1000)

if num <= 3 {
	print("\(num) es un número primo")
} else if num % 2 == 0 || num % 3 == 0 {
	print("\(num) no es un número primo")
} else {
	var i = 5
	
	repeat {
		if i * i <= num {
			if num % i == 0 || num % (i + 2) == 0 {
				print("\(num) no es un número primo")
				break
			} else {
				i += 6
			}
		} else {
			print("\(num) es un número primo")
			break
		}
	} while true
}
