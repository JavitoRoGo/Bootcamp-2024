import Foundation

//: ## Ejercicio 19
//: Almacena las primeras 10 letras del abecedario en un array y escribe un algoritmo que genere palabras al azar usando esas letras.

let letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]

//: Uso de bucle `for` para generar las 5 palabras.
//: Cada palabra se genera ordenando aleatoriamente el array de letras, y uniéndolas sin usar ningún separador.

for _ in 0..<5 {
	let word = letters.shuffled().joined(separator: "")
	print(word)
}
