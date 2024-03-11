import Foundation

//: ## Ejercicio 4
//: Dada una constante N crea una operación que sume todos los números pares que haya entre 0 y ese valor.

//: La forma de recorrer una secuencia, de números en este caso, es con un bucle `for-in`, en el que se realice la suma en cada iteración.
//: Normalmente el condicionante de sumar sólo los números pares se resolvería con un flujo `if`, pero en este caso, al estar dentro del bucle `for-in`, es más eficiente usar la sentencia `where`.

let num = 1209834
var suma = 0

for i in 0...num where i % 2 == 0 {
	suma += i
}

print("La suma de todos los números pares de 0 a \(num) es \(suma)")



//: Versión con funciones de orden más alto

let suma2 = (0...num).filter({ $0 % 2 == 0 }).reduce(0, +)
