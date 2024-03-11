import Foundation

//: ## Ejercicio 16
//: Agrega un método a la estructura Punto del ejercicio 12 llamado distancia que reciba un parámetro otroPunto de tipo Punto y calcule y devuelva la distancia entre el punto actual y el punto recibido como parámetro. Luego, crea dos objetos de la estructura Punto e inicializa las propiedades con valores y llama al método distancia para calcular y mostrar la distancia entre los dos puntos en la consola.

struct Punto {
	var x: Double
	var y: Double
	
	mutating func mover(x: Double, y: Double) {
		self.x = x
		self.y = y
	}
	
	func distanciaA(otroPunto: Punto) -> Double {
		let (x2, y2) = (otroPunto.x, otroPunto.y)
		
		let deltaX = x2 - x
		let deltaY = y2 - y
		
		return sqrt((deltaX * deltaX) + (deltaY * deltaY))
	}
}

let punto1 = Punto(x: 1, y: 1)
let punto2 = Punto(x: 4, y: -5)
let distancia = punto1.distanciaA(otroPunto: punto2)

print("La distancia entre \(punto1) y \(punto2) es \(distancia.formatted(.number.precision(.fractionLength(2))))")
