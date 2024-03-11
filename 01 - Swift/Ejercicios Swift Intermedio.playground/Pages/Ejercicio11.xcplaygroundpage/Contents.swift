import Foundation

//: ## Ejercicio 11
//: Crea una clase hija de Libro que será Libro Físico y Libro Electrónico. En el primero registra el número de páginas del libro y en el segundo la URL donde puede comprarse en formato electrónico. Crea 4 subclases, 2 de cada una.

class Libro {
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

final class Fisico: Libro {
	let paginas: Int
	
	init(paginas: Int, titulo: String, autor: String, año: Int) {
		self.paginas = paginas
		super.init(titulo: titulo, autor: autor, año: año)
	}
}

let libro1 = Fisico(paginas: 310, titulo: "El Hobbit", autor: "J.R.R. Tolkien", año: 1937)
let libro2 = Fisico(paginas: 567, titulo: "La comunidad del anillo", autor: "J.R.R. Tolkien", año: 1966)


final class Electronico: Libro {
	let web: String
	
	init(web: String, titulo: String, autor: String, año: Int) {
		self.web = web
		super.init(titulo: titulo, autor: autor, año: año)
	}
	
	var url: URL? {
		URL(string: web)
	}
}

let ebook1 = Electronico(web: "https://la-web.com", titulo: "Diez negritos", autor: "Agatha Christie", año: 1940)
let ebbok2 = Electronico(web: "https://otraweb.es", titulo: "Telón", autor: "Agatha Christie", año: 1974)
