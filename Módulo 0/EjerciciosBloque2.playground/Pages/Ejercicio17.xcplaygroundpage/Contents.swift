import Foundation

//: ## Máximo común divisor
//: Dados dos números enteros, calcular el máximo común divisor.
//: El M.C.D. de dos números es el valor más alto que es divisor de los dos.

let num1 = Int.random(in: 1...100)
let num2 = Int.random(in: 1...100)

/*
var mcd = 1
var count = 1
var max = num1 < num2 ? num1 : num2

repeat {
    if num1 % count == 0 && num2 % count == 0 {
        mcd = count
        count += 1
    } else {
        count += 1
    }
} while count <= max

print("El máximo común divisor de \(num1) y \(num2) es \(mcd)")
*/
//: Este código funciona y da el resultado esperado, pero hay una forma más óptima y sencilla de hacerlo
//: Se trata del algoritmo de Euclides, de deriva en un código mucho más sencillo

var x = num1
var y = num2
var mcd = 1

while y != 0 {
    (x,y) = (y, x % y)
}
mcd = x
print("El máximo común divisor de \(num1) y \(num2) es \(mcd)")

print("Fin")
