import Foundation

//: ## Encontrar el número más pequeño
//: Dados 10 números enteros se trata de encontrar el de menor valor

let num1 = Int.random(in: Int.min...Int.max)
let num2 = Int.random(in: Int.min...Int.max)
let num3 = Int.random(in: Int.min...Int.max)
let num4 = Int.random(in: Int.min...Int.max)
let num5 = Int.random(in: Int.min...Int.max)
let num6 = Int.random(in: Int.min...Int.max)
let num7 = Int.random(in: Int.min...Int.max)
let num8 = Int.random(in: Int.min...Int.max)
let num9 = Int.random(in: Int.min...Int.max)
let num10 = Int.random(in: Int.min...Int.max)

var numbers = [num1,num2,num3,num4,num5,num6,num7,num8,num9,num10]
let min = numbers.min() ?? 0

print("El número más pequeño es \(min)")

print("Fin")
