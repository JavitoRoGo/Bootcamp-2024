import Foundation

//: ## Ejercicio 49
//: Genere un grupo de conjuntos que permita aplicar las operaciones de unión, intersección, diferencia y diferencia simétrica en ellos con resultados que permitan ver claramente cómo funcionan.

let conjunto1: Set = [1,2,3,4,5,6,7]
let conjunto2: Set = [2,4,0,8,9]

//: Las operaciones básicas de los conjuntos son: suma o unión, resta o diferencia, diferencia simétrica e intersección.
//: Al conjunto obtenido como resultado se le aplica un modificador de ordenación para facilitar la visualización del resultado.

//: La unión de conjuntos devuelve como resultado un conjunto que contiene todos los elementos de los dos conjuntos iniciales, pero sin duplicados (al fin y al cabo se trata de un Set).
let union = conjunto1.union(conjunto2).sorted()
print(union)
// [0,1,2,3,4,5,6,7,8,9]

//: La diferencia o resta devuelve un conjunto que contiene los valores del primer conjunto, menos los valores repetidos del segundo conjunto.
let diferencia = conjunto1.subtracting(conjunto2).sorted()
print(diferencia)
// [1,3,5,6,7]

//: La diferencia simétrica devuelve un conjunto unión de los iniciales, eliminando los elementos que se repiten en ambos.
let diferenciaSimétrica = conjunto1.symmetricDifference(conjunto2).sorted()
print(diferenciaSimétrica)
// [0,1,3,5,6,7,8,9]

//: La intersección devuelve un conjunto solo con los elementos comunes a ambos, los que se repiten.
let intersección = conjunto1.intersection(conjunto2).sorted()
print(intersección)
// [2,4]
