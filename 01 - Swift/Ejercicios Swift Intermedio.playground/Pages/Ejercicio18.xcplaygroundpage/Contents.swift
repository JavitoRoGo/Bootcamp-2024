import Foundation

//: ## Ejercicio 18
//: Agrega un método a la clase Persona llamado birthdate que aumente la edad de la persona en 1. Luego, crea un objeto de la clase Persona e inicializa las propiedades con valores y llama al método birthdate.

final class Persona {
	let nombre: String
	var edad: Int
	var direccion: String
	
	init(nombre: String, edad: Int, direccion: String) {
		self.nombre = nombre
		self.edad = edad
		self.direccion = direccion
	}
	
	func birthdate() {
		edad += 1
	}
}

let persona1 = Persona(nombre: "Homer Simpson", edad: 44, direccion: "Calle Falsa, 123")
persona1.birthdate()
persona1.edad
