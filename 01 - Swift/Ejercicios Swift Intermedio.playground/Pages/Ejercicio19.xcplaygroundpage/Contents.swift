import Foundation

//: ## Ejercicio 19
//: Crea una propiedad calculada para calcular el área del rectángulo del ejercicio 9. Luego crea una función separada de este struct llamada calcularAreaRectangulos que tome como parámetros un array de Rectángulo y calcule el área total de todos los rectángulos. Luego, crea un array de objetos Rectángulos e inicializa las propiedades con valores y llama a la función calcularAreaRectangulos para calcular y mostrar el área total en la consola.

struct Rectangulo {
	let ancho: Double
	let alto: Double
	
	var area: Double {
		ancho * alto
	}
}

func calcularAreaRectangulos(_ rects: [Rectangulo]) -> Double {
	var area = 0.0
	for rect in rects {
		area += rect.area
	}
	return area
}

let rectangulos: [Rectangulo] = [
	.init(ancho: 1.1, alto: 1.1),
	.init(ancho: 2.2, alto: 2.2),
	.init(ancho: 3.3, alto: 3.3),
	.init(ancho: 4.4, alto: 4.4),
	.init(ancho: 5.5, alto: 5.5)
]

let area = calcularAreaRectangulos(rectangulos)

print("El área total de todos los rectángulos es \(area)")
