import Foundation

//: ## Pirámide de altura N
//: Dado un número entero positivo se trata de construir una pirámide de asteriscos de altura igual al número entero.
//: Uso de dos bucles for-in anidados, uno para el número de líneas, y otro para el número de asteriscos por línea

let num = Int.random(in: 1...50)

var line = [String]()

for i in 1...num {
	line = .init(repeating: " ", count: num - i)
	for _ in 1...i {
		line.append(" * ")
	}
	print(line.joined(separator: " "))
}

print("Fin")
