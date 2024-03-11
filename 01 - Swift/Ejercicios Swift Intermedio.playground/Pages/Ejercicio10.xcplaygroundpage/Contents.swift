import Foundation

//: ## Ejercicio 10
//: Crea una clase llamada Libro con las propiedades título, autor y año. Crea 5 libros. Ahora con esta clase haz lo siguiente:
//: - Crea un método información que muestre en una sola cadena el título, autor y año de publicación del mismo.
//: - Crea una función que reciba dos libros y diga si son del mismo autor.
//: - Crea una función que reciba dos libros y diga si son del mismo año.

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
}

let libro1 = Libro(titulo: "El Silmarillion", autor: "J.R.R. Tolkien", año: 1977)
let libro2 = Libro(titulo: "El hobbit", autor: "J.R.R. Tolkien", año: 1937)
let libro3 = Libro(titulo: "La comunidad del anillo", autor: "J.R.R. Tolkien", año: 1966)
let libro4 = Libro(titulo: "Las dos torres", autor: "J.R.R. Tolkien", año: 1966)
let libro5 = Libro(titulo: "El retorno del rey", autor: "J.R.R. Tolkien", año: 1966)


func esElMismoAutor(libro1: Libro, libro2: Libro) {
	if libro1.autor == libro2.autor {
		print("\(libro1.titulo) y \(libro2.titulo) tienen el mismo autor")
	} else {
		print("\(libro1.titulo) y \(libro2.titulo) no tienen el mismo autor")
	}
}
esElMismoAutor(libro1: libro1, libro2: libro4)


func sonDelMismoAño(libro1: Libro, libro2: Libro) {
	if libro1.año == libro2.año {
		print("\(libro1.titulo) y \(libro2.titulo) son del mismo año")
	} else {
		print("\(libro1.titulo) y \(libro2.titulo) no son del mismo año")
	}
}
sonDelMismoAño(libro1: libro4, libro2: libro5)
