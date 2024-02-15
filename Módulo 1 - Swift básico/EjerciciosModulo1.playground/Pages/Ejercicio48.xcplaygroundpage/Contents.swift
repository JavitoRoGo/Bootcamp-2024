import Foundation

//: ## Ejercicio 48
//: Dados dos arrays de 25 números aleatorios, obtén un nuevo array que sea ordenado y tenga la suma de ambos descartando los valores iguales.

//: Podemos añadir un array al otro, para luego convertirlo en conjunto (descartando así los repetidos) y ordenarlo.

var array1 = [Int]()
var array2 = [Int]()

for i in 1...25 {
	let num = Int.random(in: 1...1000)
	array1.append(num)
	array2.append(num + i)
}

array1.append(contentsOf: array2)

let resultado = Set(array1).sorted()
