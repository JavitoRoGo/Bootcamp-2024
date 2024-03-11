import Foundation

//: ## Categría de un triángulo
//: Categorizar un triángulo en base a la longitud de sus lados en triángulo equilátero, isósceles y escaleno.

let lado1 = Int.random(in: 0...100)
let lado2 = Int.random(in: 0...100)
let lado3 = Int.random(in: 0...100)

if lado1 == lado2 {
    if lado1 == lado3 {
        print("El triángulo de lados \(lado1)-\(lado2)-\(lado3) es equilátero")
    } else {
        print("El triángulo de lados \(lado1)-\(lado2)-\(lado3) es isósceles")
    }
} else {
    if lado1 == lado3 {
        print("El triángulo de lados \(lado1)-\(lado2)-\(lado3) es isósceles")
    } else {
        if lado2 == lado3 {
            print("El triángulo de lados \(lado1)-\(lado2)-\(lado3) es isósceles")
        } else {
            print("El triángulo de lados \(lado1)-\(lado2)-\(lado3) es escaleno")
        }
    }
}

print("Fin")
