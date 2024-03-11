import Foundation

//: ## Ejercicio 8
//: Crea una clase que abstraiga el concepto de Personas y recoja sus datos de nombre, edad y dirección. Crea 5 personas distintas.

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

//: Las instancias de las clases deben declararse siempre como constantes.

let persona1 = Persona(nombre: "Homer Simpson", edad: 44, direccion: "Calle Falsa, 123")
let persona2 = Persona(nombre: "Marge Simpson", edad: 40, direccion: "Calle Verdadera, 12")
let persona3 = Persona(nombre: "Bart Simpson", edad: 10, direccion: "Rue del Percebe, 13")
let persona4 = Persona(nombre: "Lisa Simpson", edad: 8, direccion: "Calle Sin Nombre, 99")
let persona5 = Persona(nombre: "Maggie Simpson", edad: 1, direccion: "Evergreen Terrace, 123")
