import Foundation

//: ## Ejercicio 46
//: Dado un año, determina si es bisiesto o no.

let year = 2014

if year % 4 == 0 {
	if year % 100 == 0 && year % 400 == 0 {
		print("El año \(year) es bisiesto")
	} else {
		print("El año \(year) no es bisiesto")
	}
} else {
	print("El año \(year) no es bisiesto")
}
