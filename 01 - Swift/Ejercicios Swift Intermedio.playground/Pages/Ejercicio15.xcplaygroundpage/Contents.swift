import Foundation

//: ## Ejercicio 15
//: Agrega un método a la clase Libro del ejercicio 10 llamado prestar que reciba un parámetro con el tipo Persona del ejercicio 8 y muestre un mensaje en la consola indicando que el libro ha sido prestado a la persona con el nombre de dicha persona. Luego, crea un objeto de la clase Libro e inicializa las propiedades con valores y llama al método prestar para prestar el libro a una Persona.

final class Libro {
	let titulo: String
	let autor: String
	let año: Int
	
	init(titulo: String, autor: String, año: Int) {
		self.titulo = titulo
		self.autor = autor
		self.año = año
	}
	
	func mostrarInfo() {
		print("\(titulo), escrito por \(autor) en el año \(año)")
	}
	
	func prestarA(_ persona: Persona) {
		print("El libro \(titulo) se ha prestado a \(persona.nombre)")
	}
}

final class Persona {
	let nombre: String
	var edad: Int
	var direccion: String
	
	init(nombre: String, edad: Int, direccion: String) {
		self.nombre = nombre
		self.edad = edad
		self.direccion = direccion
	}
}

let libro1 = Libro(titulo: "La comunidad del anillo", autor: "J.R.R. Tolkien", año: 1966)
let persona1 = Persona(nombre: "Homer Simpson", edad: 44, direccion: "Calle Falsa, 123")
libro1.prestarA(persona1)
