import Foundation

//: ## Adivina el número
//: Se trata de adivinar un número entre 1 y 100 en el menor número de intentos
//: Uso de bucle repeat-while para simular los intentos de adivinar por parte de un usuario

let num = Int.random(in: 1...100)
var play = 0
var guess = 0

repeat {
	guess = Int.random(in: 1...100)
	play += 1
} while num != guess

print("Has acertado en \(play) intentos")

print("Fin")
