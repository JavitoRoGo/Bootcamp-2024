import Foundation

//: ## Serie de Fibonacci con los 10 primeros elementos
//: Serie de números en los que cada nuevo número es la suma de los dos anteriores.
//: Uso de bucle for-in y tuplas. Y array para el resultado.
//: En el ejercicio del algoritmo, el cálculo del nuevo elemento se hace empleando una variable intermedia temporal. Con el uso de una tupla este cálculo se reduce a una sola línea.

var i = 0
var j = 1
var serie = [i,j]

for _ in 0..<8 {
	(i,j) = (j, i + j)
	serie.append(j)
}

print(serie)

print("Fin")
