import Foundation

//: ## Ejercicio 44
//: Dado un array de números enteros, diseña un algoritmo capaz de encontrar el valor más frecuente dentro de ese array.

let array = [1,1,1,2,2,2,2,2,3,3,4,4,4,5,5,6,6,6,7,7,7,7,7,7]

//: Una forma de resolverlo sería creando un Set a partir del array, y quedarnos así con los elementos del array sin repeticiones, que son los que tenemos que contar.
//: A continuación, iterar sobre los elementos del conjunto y contar las repeticiones dentro del array, para cada elemento del conjunto.
//: El resultado de cada iteración lo almacenamos en un diccionario que asocie el elemento del Set (clave) al número de repeticiones (valor).
//: A través del array de valores del diccionario obtenemos el valor máximo, correspondiente al número que está presente más veces.
//: Y como los array de keys y values de un diccionario mantienen las posiciones de los índices, podemos obtener el número correspondiente al mayor valor.

var repeticiones = [Int: Int]()
let conjunto = Set(array)

for number in conjunto {
	var contador = 0
	for num in array where num == number {
		contador += 1
	}
	repeticiones[number] = contador
}

let max = repeticiones.values.max() ?? 0

if let index = repeticiones.values.firstIndex(of: max) {
	print("El valor más frecuente es el número \(repeticiones.keys[index])")
}
