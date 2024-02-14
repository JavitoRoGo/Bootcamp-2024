import Foundation

//: ## Ejercicio 34
//: Calcula el índice de masa corporal (IMC) y clasifícalo según la tabla adjunta a partir de su resultado dando un resultado como cadena para cada rango.
//: IMC = P(kg) / A(m)^2

let pesoEnKg = 56.5
let alturaEnMetros = 1.7

let imc = pesoEnKg / (alturaEnMetros * alturaEnMetros)

let result = switch imc {
case 0..<16.0: "Delgadez severa"
case 16.0..<17.0: "Delgadez moderada"
case 17.0..<18.5: "Delgadez aceptable"
case 18.5..<25.0: "Peso normal"
case 25.0..<30.0: "Sobrepeso"
case 30.0..<35.0: "Obesidad tipo I"
case 35.0..<40.0: "Obesidad tipo II"
case 40.0..<50.0: "Obesidad tipo III (obesidad mórbida"
case 50.0...: "Obesidad tipo IV o extrema"
default: "valor desconocido"
}

print("Para un peso de \(pesoEnKg) kg y una altura de \(alturaEnMetros) metros se obtiene un IMC de \(imc.formatted(.number.precision(.fractionLength(2)))), que equivale a: \(result)")
