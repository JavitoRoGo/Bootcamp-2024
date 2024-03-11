import Foundation

//: ## Ejercicio 24
//: Realiza una función que analice un texto y devuelva el número de palabras del mismo, su longitud completa, y qué longitud tiene cada palabra que aparezca en dicho texto en un listado.

struct Analisis {
	var palabras: Int
	var longitud: Int
	var longPalabra: [String: Int]
}

func analizarTexto(_ texto: String) {
	var resultado = Analisis(palabras: 0, longitud: 0, longPalabra: [:])
	
	// Número de palabras
	let array = texto.replacingOccurrences(of: "[^a-zA-ZáéíóúÁÉÍÓÚ\\s]", with: "", options: .regularExpression).components(separatedBy: " ")
	resultado.palabras = array.count
	
	// Longitud
	resultado.longitud = texto.count
	
	// Longitud por palabra
	for palabra in Set(array) {
		resultado.longPalabra[palabra] = palabra.count
	}
	
	print("El texto contiene \(resultado.palabras) palabras.")
	print("La longitud del texto es de \(resultado.longitud) caracteres.")
	print("La longitud de cada palabra del texto es la siguiente:")
	for valor in resultado.longPalabra {
		print(valor.key, " -> ", valor.value)
	}
}

let texto = "Hola. Esto es un texto de prueba que testeará la función llamada analizarTexto. Esta función recibe un texto y devuelve varios resultados interesantes."
analizarTexto(texto)
