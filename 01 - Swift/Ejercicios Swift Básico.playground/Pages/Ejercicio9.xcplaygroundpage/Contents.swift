import Foundation

//: ## Ejercicio 9
//: Crea un rango de 1 a 100, recórrelo y devuelve cuántos números divisibles por 3 hay en dicho rango.

//: Para recorrer un rango se usa el bucle `for-in`. Dentro del bucle se haría el conteo de los números divisibles por 3.
//: La forma óptima de hacerlo es con la condición `where` al declarar el bucle.

let range = 1...100
var count = 0

for i in range where i % 3 == 0 {
	count += 1
}

print("Hay \(count) números divisibles por 3 en el rango \(range)")
