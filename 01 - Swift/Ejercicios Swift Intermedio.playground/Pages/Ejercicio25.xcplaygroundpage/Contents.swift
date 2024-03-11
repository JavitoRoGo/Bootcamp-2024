import Foundation

//: ## Ejercicio 25
//: Crea una fábrica de chocolate con clases. La clase principal hará chocolatinas de n onzas por tableta (n es aleatorio). Las tabletas pueden ser de chocolate negro, con leche o blanco. En cada tableta además podría venir un billete dorado para visitar la fábrica, pero en una probabilidad muy baja.

enum Chocolate: String {
	case negro
	case conLeche = "con leche"
	case blanco
}

final class Chocolatina {
	let nombre: String
	let onzas = Int.random(in: 10...20)
	let chocolate : Chocolate
	
	init(nombre: String, chocolate: Chocolate) {
		self.nombre = nombre
		self.chocolate = chocolate
	}
	
	var billeteDorado: Bool {
		Int.random(in: 1...1000000) == 10
	}
}

let tirma = Chocolatina(nombre: "Tirma", chocolate: .negro)
tirma.billeteDorado
