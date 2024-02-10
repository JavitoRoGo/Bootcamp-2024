import Foundation

//: ## Mostrar los 10 primeros números naturales

//: Ajustándonos más al algoritmo y pseudocódigo el ejercicio sería usando un bucle repeat-while:

var num = 1

repeat {
	print(num)
	num += 1
} while num < 11


//: Pero en este caso creo que se resolvería mejor de la siguiente forma, con un bucle for-in:

for i in 1..<11 {
	print(i)
}

print("Fin")
