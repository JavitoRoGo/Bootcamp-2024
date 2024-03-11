import Foundation

//: ## Resolver una ecuación de segundo grado
//: Se muestran las dos posibles soluciones

let (a, b, c) = (3.5, -6.9, -8.0)

let root = sqrt(b*b - 4*a*c)
let x1 = (-b + root) / 2*a
let x2 = (-b - root) / 2*a

print("Las soluciones a la ecuación \(a)x2+\(b)x+\(c)=0 son \(x1) y \(x2)")

print("Fin")
