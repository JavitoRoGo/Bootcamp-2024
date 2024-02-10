
import Foundation

//: ## Distancia entre dos puntos
//: Calcular la distancia entre dos puntos de un plano cartesiano, definidos por sus coordenadas x e y

let punto1 = (-2, 5)
let punto2 = (4, -8)

let (x1,y1) = punto1
let (x2,y2) = punto2

let f1 = Double(x2 - x1)
let f2 = Double(y2 - y1)

let d = sqrt((f1*f1) + (f2*f2))

print("La distancia entre el punto \(punto1) y \(punto2) es \(d)")

print("Fin")
