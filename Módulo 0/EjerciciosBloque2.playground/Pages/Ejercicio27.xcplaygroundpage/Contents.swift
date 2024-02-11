import Foundation

//: ## Número de pares e impares
//: Calcular el número de números pares e impares hasta un valor dado.
//: Realmente el cálculo es muy sencillo y no requiere de bucles ni condicionales.
//: Simplemente basta con dividir el número entre dos y tenemos los pares; y también los impares si el propio número es par.
//: No obstante, se muestra en primer lugar el cálculo con bucle for-in y condicionales.
//: Este método es muy lento para números muy grandes

let num = Int.random(in: 0...1000000)

var pares = 0
var impares = 0

for i in 1...num {
	if i % 2 == 0 {
		pares += 1
	} else {
		impares += 1
	}
}

print("Hay \(pares) números pares y \(impares) números impares del 1 al \(num)")

pares = num / 2
impares = num % 2 == 0 ? num / 2 : num / 2 + 1
print("Hay \(pares) números pares y \(impares) números impares del 1 al \(num)")

print("Fin")
