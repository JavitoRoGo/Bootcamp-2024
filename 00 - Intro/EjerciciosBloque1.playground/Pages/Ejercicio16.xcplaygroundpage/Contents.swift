import Foundation

//: ## Mínimo común múltiplo
//: Dados dos números enteros, calcular el mínimo común múltiplo.
//: El m.c.m. de dos números es el valor más pequeño que es múltiplo de los dos.

let num1 = Int.random(in: 1...100)
let num2 = Int.random(in: 1...100)

/*
var mcm = num2 > num1 ? num2 : num1

if mcm % num1 == 0 && mcm % num2 == 0 {
	print("El mínimo común múltiplo de \(num1) y \(num2) es \(mcm)")
} else {
	repeat {
		mcm += 1
	} while mcm % num1 != 0 || mcm % num2 != 0
	
	print("El mínimo común múltiplo de \(num1) y \(num2) es \(mcm)")
}
 */
//: El código en su conjunto funciona, pero el sumatorio `mcm += 1` hace que no sea nada eficiente para números grandes.

//: La forma óptima de calcular el m.c.m. es a través de la fórmula mcm = (axb)/(MCD(a,b)), donde MCD es el máximo común divisor.
//: El M.C.D. es el mayor valor que es divisor de dos números dados, y se obtiene mediante el algoritmo de Euclides.

var x = num1
var y = num2
var mcd = 1

while y != 0 {
	(x,y) = (y, x % y)
}
mcd = x

let mcm = (num1 * num2) / mcd

print("El mínimo común múltiplo de \(num1) y \(num2) es \(mcm)")

print("Fin")
