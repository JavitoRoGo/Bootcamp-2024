import Foundation

//: ## Números primos menores que N
//: Se define un número entero positivo y se muestran los números primos desde 1 hasta N

let num = Int.random(in: 1...1000)

for n in 1..<num+1 {
	if n <= 3 {
		print("\(n) es un número primo")
	} else if n % 2 == 0 || n % 3 == 0 {
		continue
	} else {
		var i = 5
		
		var repeating = true
		repeat {
			if i * i <= n {
				if n % i == 0 || n % (i + 2) == 0 {
					repeating = false
					continue
				} else {
					i += 6
				}
			} else {
				print("\(n) es un número primo")
				repeating = false
			}
		} while repeating
	}
}

print("Fin")
