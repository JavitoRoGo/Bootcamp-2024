import Foundation

//: ## Ejercicio 13
//: A partir de una tupla para almacenar las dimensiones largo, ancho y alto de una caja, calcula e imprime el volumen de la caja.

let box: (length: Double, width: Double, height: Double) = (12.3, 76.3, 7.55)

let volume = box.length * box.width * box.height

print("La caja tiene un volumen de \(volume.formatted(.number.precision(.fractionLength(2)))) cm3")
