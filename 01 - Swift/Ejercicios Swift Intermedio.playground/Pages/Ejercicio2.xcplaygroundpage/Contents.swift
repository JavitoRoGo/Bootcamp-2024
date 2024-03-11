import Foundation

//: ## Ejercicio 2
//: Crea 4 datos distintos de distintos tipos de datos numéricos y realiza 10 operaciones aritméticas con ellos: suma, resta, multiplicación, división y resto de división. Combina operaciones en una sola.

let num1 = 88
let num2 = 3.99
let num3: Float = 6.21
let num4: Int8 = 44

let suma1 = Float(num1) + Float(num2) + num3 + Float(num4)
let suma2 = Double(num1) + num2 + Double(num3) + Double(num4)

let resta1 = Float(num1) - Float(num2) - num3 - Float(num4)
let resta2 = Double(num1) - num2 - Double(num3) - Double(num4)

let operacion1 = (Float(num1) + Float(num2)) * num3 / Float(num4)
let operacion2 = Double(num1) * (num2 + Double(num3)) / Double(num4)

let resto1 = num1 % Int(num4)
let resto2 = num2.truncatingRemainder(dividingBy: Double(num3))

let operacion3 = (num1 * Int(num3)) % Int(num4)
let operacion4 = num3.truncatingRemainder(dividingBy: Float(num4) + Float(num2))
