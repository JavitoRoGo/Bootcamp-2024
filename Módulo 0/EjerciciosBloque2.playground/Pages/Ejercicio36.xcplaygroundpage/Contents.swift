import Foundation

//: ## Calcular la potencia de x elevado a y

let x = Int.random(in: 1...20)
let y = Int.random(in: 1...20)
var result = 1

for num in 1...y {
	result *= x
}

print("\(x) elevado a \(y) es \(result)")

print("Fin")
