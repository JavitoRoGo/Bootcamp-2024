import Foundation

//: ## Ejercicio 28
//: Dado un array de números enteros en una constante, haz un algoritmo que sea capaz de contar el total de números primos.

//: Debemos retomar el algoritmo del Ejercicio 25 para determinar si un número es primo, pero ligeramente modificado para que sume 1 al contador en caso de ser primo, en lugar de imprimir la respuesta por consola.

let array = [2,5,88,6,54,8,98,7,5,5,4,4,5,7,77,8,899,93,32]

var count = 0

for num in array {
	if num <= 3 {
		count += 1
	} else if num % 2 == 0 || num % 3 == 0 {
		// no es primo
		continue
	} else {
		var i = 5
		
		repeat {
			if i * i <= num {
				if num % i == 0 || num % (i + 2) == 0 {
					// no es primo
					break
				} else {
					i += 6
				}
			} else {
				count += 1
				break
			}
		} while true
	}
}

print("El total de números primos es \(count)")
