import Foundation

//: ## Ejercicio 33
//: A partir de un ca cantidad de dinero prestada P, un interés I, una tasa de interés R porcentual y un tiempo T, calcula el interés simple para una cantidad de dinero.
//: I = P x R x T

let cantidad = 20_000
let tasaInteres = 3.5
let tiempoEnAños = 2.5

let interes = Double(cantidad) * tasaInteres / 100 * tiempoEnAños

print("El interés simple es \(interes.formatted(.currency(code: "eur").locale(Locale(identifier: "es"))))")
