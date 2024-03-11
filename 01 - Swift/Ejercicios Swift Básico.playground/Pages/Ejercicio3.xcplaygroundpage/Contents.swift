import Foundation

//: ## Ejercicio 3
//: Crea una suma segura para un dato de tipo **`UInt16`** que permita que 65.000 + 1.000 no dé un error que cuelgue la app.

//: El tipo **`UInt16`** soporta números enteros positivos hasta 65536 (2^16), por lo que la suma planteada daría como resultado un overflow: un dato que no cabe en el tipo especificado.
//: Para evitarlo hay que usar una comprobación mediante el método `addingReportingOverflow`.

let num1: UInt16 = 65000
let num2: UInt16 = 1000
var suma: UInt16 = 0

if num1.addingReportingOverflow(num2).overflow {
	print("La suma no es segura")
} else {
	suma = num1 + num2
	print("La suma es \(suma)")
}
