import Foundation

//: ## Cálculo del área de un triángulo, dado su base y su altura

let base = Double.random(in: 0...100)

let altura = Double.random(in: 0...100)

let area = base * altura / 2
print("El área de un triángulo de base \(base) y altura \(altura) es \(area)")

print("Fin")
