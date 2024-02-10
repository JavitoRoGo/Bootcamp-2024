import Foundation

//: ## Sumatorio de los números pares hasta N
//: Uso de bucle for-in para recorrer los N números y calcular el sumatorio.
//: Filtrar los números pares usando el módulo o resto de la división.
//: Este filtrado se usará dentro de la sentencia 'where' al declarar el for-in, que es más eficiente que un flujo if-else dentro del for-in.

let num = Int.random(in: 0...1000000)
var suma = 0

for i in 1..<num+1 where i % 2 == 0 {
	suma += i
}

print("La suma de los números pares hasta \(num) es \(suma)")

print("Fin")
