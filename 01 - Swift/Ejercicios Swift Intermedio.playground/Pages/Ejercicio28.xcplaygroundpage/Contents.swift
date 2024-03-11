import Foundation

//: ## Ejercicio 28
//: Enviada a una función un array de números enteros, devuelve un diccionario e cuya clave esté cada número único en dicho array y en el valor las veces que aparece consecutivamente dentro del array enviado.

let array = [1,1,2,2,3,2,3,4,3,3,3,4,4,5,4,4,4,5,5,5,2,5,5,5]
var resultado = [Int: Int]()

for clave in Set(array) {
	var contador = 0
	for num in array where num == clave {
		contador += 1
	}
	resultado[clave] = contador
}
