import Foundation

//: ## Ejercicio 5
//: Crea un array de números enteros y calcula su resultado sumando los valores impares y multiplicando por sus valores pares.

let array = [1,2,3,4,5,6,7,8,9]
var result = 0

for num in array where num % 2 != 0 {
	result += num
}
print("La suma de los números impares es \(result)")

result = 1
for num in array where num % 2 == 0 {
	result *= num
}
print("El producto de los números pares es \(result)")
