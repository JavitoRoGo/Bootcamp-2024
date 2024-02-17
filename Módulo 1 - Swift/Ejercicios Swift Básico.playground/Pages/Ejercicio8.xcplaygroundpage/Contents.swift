import Foundation

//: ## Ejercicio 8
//: Imprime un tablero de ajedrez de 8x8 usando asteriscos y espacios.

//: Uso de bucles `for-in` para construir el tablero

let row1 = "*************************************************************************"
let row2 = "*        *        *        *        *        *        *        *        *"

print(row1)
for _ in 0..<8 {
	for _ in 0..<4 {
		print(row2)
	}
	print(row1)
	
}
