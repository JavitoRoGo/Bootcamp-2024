import Foundation

//: ## Rombo de altura N
//: Dibujar un rombo de altura N
//: Sería como duplicar el dibuja de dos pirámides de altura N/2 con la segunda pirámide invertida

let num = Int.random(in: 1...50)

var line = [String]()

for i in 1...num {
	line = .init(repeating: " ", count: num - i)
	for _ in 1...i {
		line.append(" * ")
	}
	print(line.joined(separator: " "))
}

for i in 1..<num {
	line = .init(repeating: " ", count: i)
	for _ in 0..<num - i {
		line.append(" * ")
	}
	print(line.joined(separator: " "))
}

print("Fin")
