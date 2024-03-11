import Foundation

//: ## Ejercicio 29
//: Dado un array de números enteros en una constante, haz un algoritmo que sea capaz de sumar todos los números que hay.

let array = [2,5,88,6,54,8,98,7,5,5,4,4,5,7,77,8,899,93,32]

var sum = 0

for num in array {
	sum += num
}

print("La suma total de los números es \(sum)")
