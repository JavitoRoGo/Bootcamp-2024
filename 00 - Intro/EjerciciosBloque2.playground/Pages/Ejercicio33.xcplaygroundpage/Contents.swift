import Foundation

//: ## Devolver el valor absoluto de un número

let num = Int.random(in: Int.min...Int.max)

let absoluto = num > 0 ? num : -num

print("El valor absoluto de \(num) es \(absoluto)")

print("Fin")
