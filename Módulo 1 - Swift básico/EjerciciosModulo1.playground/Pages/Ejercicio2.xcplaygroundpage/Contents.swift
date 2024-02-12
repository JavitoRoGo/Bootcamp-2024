import Foundation

//: ## Ejercicio 2
//: A partir de un número de tipo **`Float`**, otro de tipo **`Double`** y otro de tipo **`Int`**, crea la forma de poder sumar todos ellos.

//: Swift es un lenguaje de tipado estricto y no permite las operaciones entre distintos tipos de datos.
//: Por tanto, hay que convertir dos de los datos al tercer tipo para que todos compartan el mismo tipo de dato y puedan sumarse.
//: Para ello, basta con usar el constructor del tipo Double, por ejemplo.

let floatNumber: Float = 890.2234
let doubleNumber = 234.889
let integerNumber = 7866

let suma = Double(floatNumber) + doubleNumber + Double(integerNumber)
