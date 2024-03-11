import Foundation

//: ## Ejercicio 14
//: Agrega un método a la clase Persona del ejercicio 8 llamado saludar que muestre un mensaje de saludo personalizado en la consola, utilizando el nombre de la persona. Luego, crea un objeto de la clase Persona e inicializa las propiedades con valores y llama al método saludar.

final class Persona {
	let nombre: String
	var edad: Int
	var direccion: String
	
	init(nombre: String, edad: Int, direccion: String) {
		self.nombre = nombre
		self.edad = edad
		self.direccion = direccion
	}
	
	func saludar() {
		print("Hola \(nombre). ¿Cómo estás hoy?")
	}
}

let persona1 = Persona(nombre: "Homer Simpson", edad: 44, direccion: "Calle Falsa, 123")
persona1.saludar()
