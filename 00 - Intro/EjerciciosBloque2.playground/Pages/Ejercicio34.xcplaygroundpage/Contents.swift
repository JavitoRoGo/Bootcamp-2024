import Foundation

//: ## Cuadrado perfecto
//: Un número se considera un cuadrado perfecto si su valor es igual al cuadrado de otro número

let num = Int.random(in: 1...1000000)

let sqr = sqrt(Double(num))

if sqr.truncatingRemainder(dividingBy: 1) == 0 {
	print("El número \(num) es cuadrado perfecto de \(sqr.formatted(.number.precision(.fractionLength(0))))")
} else {
	print("El número \(num) no es un cuadrado perfecto")
}

print("Fin")
