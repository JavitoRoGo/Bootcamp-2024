import Foundation

//: ## Ejercicio 9
//: Crea un struct de un Rectángulo, que tendrá las propiedades de ancho y alto del mismo. Crea varios rectángulos y construye una función que te permita saber cuál es el más grande y el más pequeño según su área, que obtenemos multiplicando ancho por alto.

struct Rectangulo {
	let ancho: Double
	let alto: Double
	
	var area: Double {
		ancho * alto
	}
}

let rectangulo1 = Rectangulo(ancho: 1.5, alto: 4.7)
let rectangulo2 = Rectangulo(ancho: 2.5, alto: 3.7)
let rectangulo3 = Rectangulo(ancho: 3.5, alto: 2.7)
let rectangulo4 = Rectangulo(ancho: 4.5, alto: 7.7)
let rectangulo5 = Rectangulo(ancho: 5.5, alto: 8.7)

func rectanguloMayorYMenor(_ rect: Rectangulo...) -> (mayor: Rectangulo, menor: Rectangulo) {
	var mayor = Rectangulo(ancho: 0, alto: 0)
	var menor = Rectangulo(ancho: 10000, alto: 10000)
	
	for rectangulo in rect {
		if rectangulo.area > mayor.area {
			mayor = rectangulo
		}
		if rectangulo.area < menor.area {
			menor = rectangulo
		}
	}
	
	return (mayor, menor)
}

let (max, min) = rectanguloMayorYMenor(rectangulo1, rectangulo2, rectangulo3, rectangulo4, rectangulo5)
max
min
