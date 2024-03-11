import Foundation

//: ## Ejercicio 20
//: Crea una función llamada prestarLibro para que tome como parámetros un objeto de la clase Libro de los ejercicios 10 y 15 y una persona de los ejercicios 14, 15 y 18 y muestre un mensaje en la consola indicando que el libro ha sido prestado a la persona con el nombre recibido como parámetro. Luego, crea un objeto de la clase Libro e inicializa las propiedades con valores y llama a la función prestarLibro para prestar el libro a una persona.

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

func prestarLibro(_ libro: Libro, aLaPersona persona: Persona) {
	libro.prestarA(persona)
}

let libro1 = Libro(titulo: "La comunidad del anillo", autor: "J.R.R. Tolkien", año: 1966)
let persona1 = Persona(nombre: "Homer Simpson", edad: 44, direccion: "Calle Falsa, 123")
prestarLibro(libro1, aLaPersona: persona1)
