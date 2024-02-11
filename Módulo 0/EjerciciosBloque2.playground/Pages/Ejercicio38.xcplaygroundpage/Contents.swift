import Foundation

//: ## Suma de los dígitos de un número
//: Se trata de sumar los dígitos de un número hasta que el resultado final tenga un solo dígito.
//: Por ejemplo: 456 -> 4+5+6=15 -> 1+5=6

let num = Int.random(in: 1...Int.max)
var suma = num
var digits = String(suma).count

if digits == 1 {
	print("La suma final es \(suma)")
} else {
	repeat {
		let array = Array(String(suma))
		suma = 0
		for digit in array {
			if let number = Int(String(digit)) {
				suma += number
			}
		}
		digits = String(suma).count
	} while digits > 1
	
	print("La suma final es \(suma)")
}

print("Fin")
