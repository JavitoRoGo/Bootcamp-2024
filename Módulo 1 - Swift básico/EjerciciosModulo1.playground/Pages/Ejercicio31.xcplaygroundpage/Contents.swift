import Foundation

//: ## Ejercicio 31
//: A partir de la nota de un alumno, clasifica su puntuación mediante grados de la A a la F.

//: Al tener que valorar un dato entre más de 2 o 3 posibilidades es más claro usar un switch en lugar de una sentencia if-else.

let note = Int.random(in: 0...10)

let grade = switch note {
case 0: "F"
case 1,2: "E"
case 3,4: "D"
case 5,6: "C"
case 7,8: "B"
case 9,10: "A"
default: "desconocido"
}

print("Has obtenido un grado \(grade)")
