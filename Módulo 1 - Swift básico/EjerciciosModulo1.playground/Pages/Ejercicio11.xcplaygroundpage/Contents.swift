
import Foundation

//: ## Ejercicio 11:
//: Dado un array de 10 números enteros, inserta el número 3 en la posición 5 y extrae el valor de la posición 7. Luego intercambia los valores de las posiciones 2 y 6 para poner al final un 10.

var array = [10,20,30,40,50,60,70,80,90,100]

// Insertar el número 3 en la posición 5
array.insert(3, at: 5)

// Extraer el valor de la posición 7
let position7 = array.remove(at: 7)

// Intercambio de valores para las posiciones 2 y 6
array.swapAt(2, 6)

// Añadir 10 al final
array.append(10)
