import Foundation

//: ## Ejercicio 23
//: Crea un array con 50 números enteros aleatorios. A partir del mismo, crea una cadena de respuesta que cuando encuentre que alguno de ellos es un número primo lo incluya. El resultado ha de ser una cadena similar a: “Los números primos aleatorios de esta lista son x, x, x, x, x”.

func esPrimo(_ num: Int) -> Bool {
	if num <= 3 {
		return true
	} else if num % 2 == 0 || num % 3 == 0 {
		return false
	} else {
		var i = 5
		
		repeat {
			if i * i <= num {
				if num % i == 0 || num % (i + 2) == 0 {
					return false
				} else {
					i += 6
				}
			} else {
				return true
			}
		} while true
	}
}

var nums = [Int]()
for _ in 1...50 {
	let random = Int.random(in: 1...100)
	nums.append(random)
}

var resultado = [Int]()

for num in nums where esPrimo(num) {
	resultado.append(num)
}

print("Los números primos aleatorios de esta lista son \(resultado)")
