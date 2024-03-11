import Foundation

//: ## Devolver 'Aprobado' o 'Suspenso' en función de la nota final, especificando a su vez la nota de corte
//: Uso de bucle while para acotar, tanto la nota de corte como la nota final, entre 0 y 10.
//: La nota final y la nota de corte se obtienen como números aleatorios. En el rango de creación se incluyen valores fuera del rango 0...10 para poner a prueba el bucle while.
//: Se imprimen también la nota de corte obtenida y la nota final, en ambos casos con formateo para mostrar una sola cifra decimal.

var notaCorte = Double.random(in: -10...100)
while notaCorte <= 0 || notaCorte >= 10 {
	print("La nota de corte debe estar comprendida entre 0 y 10")
	notaCorte = Double.random(in: -10...100)
}
print("La nota de corte es \(notaCorte.formatted(.number.precision(.fractionLength(1))))")

var nota = Double.random(in: -10...100)
while nota < 0 || nota > 10 {
	print("La nota debe estar comprendida entre 0 y 10")
	nota = Double.random(in: -10...100)
}
print("La nota final es \(nota.formatted(.number.precision(.fractionLength(1))))")

if nota >= notaCorte {
	print("Aprobado")
} else {
	print("Suspenso")
}

print("Fin")
