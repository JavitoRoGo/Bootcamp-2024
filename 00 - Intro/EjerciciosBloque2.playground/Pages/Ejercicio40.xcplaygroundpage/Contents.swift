
import Foundation

//: ## Calcular la edad según el año de nacimiento

let año = 2023

let edad = Calendar.current.component(.year, from: .now) - año

print("La edad es \(edad) años")

print("Fin")
