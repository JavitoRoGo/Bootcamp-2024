import Foundation

//: ## Ejercicio 21
//: A partir del radio de un círculo introducido en una constante calcula el área de dicho círculo.

let radius = 48.7

let area = Double.pi * radius * radius

print("El área de un círculo de radio \(radius) cm es \(area.formatted(.number.precision(.fractionLength(2)))) cm2")
