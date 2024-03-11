import Foundation

//: ## Ejercicio 36
//: A partir de una tupla de datos que representa una coordenada en la forma (x,y), calcula la distancia dentro de un plano cartesiano.

//: Uso de tuplas para declarar los puntos y para asignar sus coordenadas a constantes con las que trabajar.

let punto1 = (2,5)
let punto2 = (-1,9)

let (x1,y1) = punto1
let (x2,y2) = punto2

let deltaX = Double(x2 - x1)
let deltaY = Double(y2 - y1)

let distance = sqrt(deltaX*deltaX + deltaY*deltaY)

print("La distancia entre los puntos \(punto1) y \(punto2) es \(distance)")
