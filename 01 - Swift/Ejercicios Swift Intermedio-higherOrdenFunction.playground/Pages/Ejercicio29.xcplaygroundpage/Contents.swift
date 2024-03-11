import Foundation

//: ## Ejercicio 29
//: Enviada una frase a una función, descomponga esta en sus distintas palabras. Una vez hecho, devuelva un diccionario con las palabras como clave y en el valor, el número de veces que aparece cada palabra en la frase.


//: Versión con funciones de orden más alto y extensiones

extension String {
	func analizar() -> [String: Int] {
		var resultado = [String: Int]()
		
		// Lista de palabras
		let array = self.replacingOccurrences(of: "[^a-zA-ZáéíóúÁÉÍÓÚ\\s]", with: "", options: .regularExpression).components(separatedBy: " ")
		
		Set(array).forEach { clave in
			var contador = 0
			contador += array.filter {
				$0 == clave
			}
			.count
			resultado[clave] = contador
		}
		
		
		return resultado
	}
}

let texto = "Hola. Esto es un texto de prueba que testeará la función llamada analizarTexto. Esta función recibe un texto y devuelve varios resultados interesantes."
texto.analizar()
