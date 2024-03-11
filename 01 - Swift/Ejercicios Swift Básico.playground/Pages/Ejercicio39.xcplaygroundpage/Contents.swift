import Foundation

//: ## Ejercicio 39
//: Cree un programa capaz de obtener la media aritmética de una sucesión de números dentro de un array.

//: Uso de bucle `for-in` y de la propiedad `count` de los array.

let nums = [23,4,5,6,6,7,87,8,9,9,3,24,25,6,4]

var suma = 0

for num in nums {
	suma += num
}

print("La media aritmética es \(suma / nums.count)")
