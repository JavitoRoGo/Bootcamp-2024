import Foundation

//: ## ¿Es un número primo?
//: Se define un número entero positivo para comprobar si es primo

let num = Int.random(in: 1...1000)

if num <= 3 {
	print("\(num) es un número primo")
} else if num % 2 == 0 || num % 3 == 0 {
	print("\(num) no es un número primo")
} else {
	var i = 5
	
	var repeating = true
	repeat {
		if i * i <= num {
			if num % i == 0 || num % (i + 2) == 0 {
				print("\(num) no es un número primo")
				repeating = false
			} else {
				i += 6
			}
		} else {
			print("\(num) es un número primo")
			repeating = false
		}
	} while repeating
}

print("Fin")
