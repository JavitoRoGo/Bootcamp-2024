import Foundation

//: ## Determinar si un año es bisiesto
//: Un año es bisiesto si es divisible por 4 pero no por 100, o por 4 por 100 y por 400.

let year = Int.random(in: 0...3000)

if year % 4 == 0 {
	if year % 100 == 0 {
		if year % 400 == 0 {
			print("El año \(year) es bisiesto")
		} else {
			print("El año \(year) no es bisiesto")
		}
	} else {
		print("El año \(year) es bisiesto")
	}
} else {
	print("El año \(year) no es bisiesto")
}

print("Fin")
