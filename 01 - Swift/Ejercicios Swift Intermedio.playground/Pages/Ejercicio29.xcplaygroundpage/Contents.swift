import Foundation

//: ## Ejercicio 29
//: Enviada una frase a una función, descomponga esta en sus distintas palabras. Una vez hecho, devuelva un diccionario con las palabras como clave y en el valor, el número de veces que aparece cada palabra en la frase.

func analizarTexto(_ texto: String) -> [String: Int] {
	var resultado = [String: Int]()
	
	// Lista de palabras
	let array = texto.replacingOccurrences(of: "[^a-zA-ZáéíóúÁÉÍÓÚ\\s]", with: "", options: .regularExpression).components(separatedBy: " ")
	
	for clave in Set(array) {
		var contador = 0
		for palabra in array where palabra == clave {
			contador += 1
		}
		resultado[clave] = contador
	}
	
	
	return resultado
}

let texto = "Hola. Esto es un texto de prueba que testeará la función llamada analizarTexto. Esta función recibe un texto y devuelve varios resultados interesantes."
analizarTexto(texto)
