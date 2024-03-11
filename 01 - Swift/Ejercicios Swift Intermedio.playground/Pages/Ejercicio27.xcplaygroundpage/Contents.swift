import Foundation

//: ## Ejercicio 27
/*
 Vamos a crear la estructura de un videojuego.
 - Personaje tiene un valor de vida y un nombre. Es capaz de morir cuando se queda sin vida y de saludar diciendo su nombre.
 - Héroe hereda de Personaje. Tiene valor de fuerza de ataque y es capaz de atacar a un Enemigo que recibe como parámetro, reduciendo su vida en un ataque igual a un número entre 0 y la mitad de su fuerza.
 - Mago hereda de Héroe. Tiene un valor de magia que suma la mitad de su valor al daño ocasionado en un ataque y reduce en 1/4 el daño
 infligido cuando es atacado por un Enemigo.
 - Guerrera hereda de Héroe. Tiene una espada que en su inicialización tendrá un valor de ataque que será un número aleatorio de 0 a la mitad de su fuerza. Dicha espada inflige un daño extra a los enemigos igual al total de dicha fuerza.
 - Enemigo hereda de Personaje. Tiene valor de fuerza de ataque y puede tener tres tipos de armas, la cual se elegirá en su inicialización. Puede atacar a un héroe, recibido como parámetro. El arma Hacha hará un daño de 10 sobre el daño del ataque, el arma Sable lo hará de 5 y el arma Cadena lo hará de 2. También puede ser que el Enemigo se cree sin arma y entonces no aumente su fuerza en el ataque.
 Crear todos los inicializadores, métodos y propiedades necesarios, así como la capacidad de atacar y morir de cada personaje susceptible de ello, además del resto de comportamientos indicados. Usa enumeraciones donde sea más práctico para representar datos.
 */

class Personaje {
	let nombre: String
	var vida: Int {
		didSet {
			if vida < 0 {
				vida = 0
				muerto = true
			}
		}
	}
	
	init(nombre: String, vida: Int) {
		self.nombre = nombre
		self.vida = vida
	}
	
	var muerto = false
	
	func saludar() {
		print("Hola, soy \(nombre) y yo te saludo.")
	}
}

class Heroe: Personaje {
	let fuerza: Int
	
	init(fuerza: Int, nombre: String, vida: Int) {
		self.fuerza = fuerza
		super.init(nombre: nombre, vida: vida)
	}
	
	var ataque: Int {
		Int.random(in: 0...fuerza/2)
	}
	
	func atacarA(_ enemigo: Enemigo) {
		print("\(nombre) ataca a \(enemigo.nombre) con una fuerza de \(ataque) puntos")
		enemigo.vida -= ataque
	}
}

final class Mago: Heroe {
	let magia: Int
	
	init(magia: Int, fuerza: Int, nombre: String, vida: Int) {
		self.magia = magia
		super.init(fuerza: fuerza, nombre: nombre, vida: vida)
	}
	
	override var ataque: Int {
		super.ataque + magia / 2
	}
}

final class Guerrera: Heroe {
	var ataqueEspada: Int {
		Int.random(in: 0...fuerza/2)
	}
	
	override var ataque: Int {
		super.ataque + ataqueEspada
	}
}

final class Enemigo: Personaje {
	let fuerza: Int
	let arma: Arma
	
	init(fuerza: Int, nombre: String, vida: Int) {
		self.fuerza = fuerza
		self.arma = .init(rawValue: [10,5,2,0].randomElement()!)!
		super.init(nombre: nombre, vida: vida)
	}
	
	var ataque: Int {
		fuerza + arma.rawValue
	}
	
	func atacarA(heroe: Heroe? = nil, mago: Mago? = nil) {
		if let heroe {
			print("\(nombre) ataca a \(heroe.nombre) con una fuerza de \(ataque) puntos")
			heroe.vida -= ataque
			return
		}
		if let mago {
			print("\(nombre) ataca a \(mago.nombre) con una fuerza de \(ataque) puntos")
			mago.vida -= (ataque - ataque/4)
			return
		}
	}
}

enum Arma: Int {
	case hacha = 10
	case sable = 5
	case cadena = 2
	case nada = 0
}

let gandalf = Mago(magia: 150, fuerza: 28, nombre: "Gandalf", vida: 190)
let monza = Guerrera(fuerza: 55, nombre: "Monzcarro", vida: 77)
let orco = Enemigo(fuerza: 24, nombre: "orco", vida: 35)
let troll = Enemigo(fuerza: 75, nombre: "troll", vida: 50)

orco.atacarA(mago: gandalf)
gandalf.vida
gandalf.atacarA(orco)
orco.vida
monza.atacarA(troll)
troll.vida
troll.atacarA(heroe: monza)
monza.vida
gandalf.atacarA(troll)
troll.vida
