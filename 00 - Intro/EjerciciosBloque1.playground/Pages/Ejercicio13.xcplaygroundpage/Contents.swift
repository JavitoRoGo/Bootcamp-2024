import Foundation

//: ## Comprobar si N está dentro de un rango
//: Crear un valor de número aleatorio para el valor inferior de un rango, y otro para el valor superior de un rango
//: Comprobar que el valor del límite superior sea mayor que el valor del límite inferior
//: Crear un tercer número aleatorio y comprobar que esté dentro del rango

let limiteInferior = Int.random(in: -100...100)
var limiteSuperior: Int
repeat {
	limiteSuperior = Int.random(in: -100...100)
} while limiteSuperior <= limiteInferior

let num = Int.random(in: -1000...1000)

if num < limiteInferior || num > limiteSuperior {
	print("El número \(num) está fuera del rango [\(limiteInferior) - \(limiteSuperior)]")
} else {
	print("El número \(num) está dentro del rango [\(limiteInferior) - \(limiteSuperior)]")
}

print("Fin")
