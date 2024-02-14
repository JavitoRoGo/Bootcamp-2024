import Foundation

//: ## Ejercicio 31-bis
//: Construye un array con al menos 100 números aleatorios de entre 1 y 100 y luego filtra este para obtener como resultado solo aquellos números que son primos entre los 100 que había al principio.

//: Para construir el array de 100 números aleatorios usaremos un bucle `for-in` que genere un número aleatorio dentro de cada iteración, y luego lo añada al array. Si generamos el array con el constructor `repeating:count:` con un número aleatorio, se repetiría ese mismo número las 100 veces.

var array = [Int]()
for _ in 1...100 {
	let num = Int.random(in: 1...100)
	array.append(num)
}

//: Volvemos a hacer uso del algoritmo para determinar si un número es primo.

var result = [Int]()

for num in array {
	if num <= 3 {
		result.append(num)
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
				result.append(num)
				break
			}
		} while true
	}
}

print("Los números primos resultantes son: \(result)")
