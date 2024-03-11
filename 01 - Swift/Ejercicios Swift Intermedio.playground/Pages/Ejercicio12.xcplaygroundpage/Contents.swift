import Foundation

//: ## Ejercicio 12
//: Crea una estructura llamada Punto con las propiedades x e y. Agrega un método a la estructura llamado mover que reciba dos parámetros (x e y) y actualice las propiedades de x e y con los nuevos valores. Luego, crea un objeto de esta estructura e inicializa las propiedades con valores y llama al método mover para cambiar la posición del punto.


struct Punto {
	var x: Double
	var y: Double
	
	mutating func mover(x: Double, y: Double) {
		self.x = x
		self.y = y
	}
}

var puntoA = Punto(x: 2, y: 4)
print(puntoA.x, puntoA.y)

puntoA.mover(x: 3, y: 7)
print(puntoA.x, puntoA.y)
