import Foundation

//: ## Ejercicio 45
//: A partir de unas constantes de días, horas, minutos y segundos, crea un algoritmo que diga cuantos segundos hay en dicha expresión.

let days = 19
let hours = 50
let minutes = 95
let seconds = 103

let total = days * 86400 + hours * 3600 + minutes * 60 + seconds

print("El total de segundos que hay en \(days) días, \(hours) horas, \(minutes) minutos y \(seconds) segundos es \(total.formatted(.number.locale(Locale(identifier: "es"))))")
