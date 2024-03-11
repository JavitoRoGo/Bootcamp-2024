import Foundation

//: ## Calificación escolar
//: Mostrar la calificación como A, B, C, etc. en función del valor numérico de la nota obtenida.

let nota = Int.random(in: 0...100)

switch nota {
case 90...100:
    print("Calificación obtenida para la nota \(nota): A")
case 80..<90:
    print("Calificación obtenida para la nota \(nota): B")
case 70..<80:
    print("Calificación obtenida para la nota \(nota): C")
case 60..<70:
    print("Calificación obtenida para la nota \(nota): D")
case 0..<60:
    print("Calificación obtenida para la nota \(nota): F")
default:
    print("Nota no válida") 
}

print("Fin")
