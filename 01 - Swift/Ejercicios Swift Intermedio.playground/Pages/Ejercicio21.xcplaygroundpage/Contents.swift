import Foundation

//: ## Ejercicio 21
//: Crea una función llamada filtrarPuntos que tome como parámetros un array de objetos Punto de los ejercicios 12 y 16 y una distancia límite. Devuelve un array con los puntos que se encuentran dentro de la distancia límite. Luego, crea un array de objetos Punto e inicializa las propiedades con valores y llama a la función filtrarPuntos para obtener un array con los puntos dentro de la distancia límite.

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

func filtrarPuntos(_ puntos: [Punto], distancia: Double) -> [Punto] {
	// Para saber si un punto está dentro de la distancia límite dada tomaremos como punto inicial el origen de coordenadas
	let origen = Punto(x: 0, y: 0)
	var resultado = [Punto]()
	
	for punto in puntos where punto.distanciaA(otroPunto: origen) < distancia {
		resultado.append(punto)
	}
	
	return resultado
}

let puntos: [Punto] = [
	.init(x: 1, y: 1),
	.init(x: 2, y: 2),
	.init(x: 3, y: 3),
	.init(x: 4, y: 4),
	.init(x: 5, y: 5),
]

let filtro = filtrarPuntos(puntos, distancia: 3.5)
