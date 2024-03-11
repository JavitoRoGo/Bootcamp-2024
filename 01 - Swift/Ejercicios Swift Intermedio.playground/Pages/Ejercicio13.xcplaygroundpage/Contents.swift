import Foundation

//: ## Ejercicio 13
//: Crea una clase llamada CuentaBancaria con propiedades como titular y saldo. Agrega métodos a la clase llamados depositar y retirar que reciban un parámetro cantidad y actualicen el saldo de la cuenta en consecuencia. Luego, crea un objeto de esta clase e inicializa las propiedades con valores y llama a los métodos depositar y retirar para cambiar el saldo de la cuenta. Comprueba y prueba que no pueda retirarse más dinero del que hay en la cuenta.

final class CuentaBancaria {
	let titular: String
	var saldo: Double
	
	init(titular: String, saldo: Double) {
		self.titular = titular
		self.saldo = saldo
	}
	
	func depositar(cantidad: Double) {
		saldo += cantidad
		print("El nuevo saldo es \(saldo.formatted(.currency(code: "eur").locale(Locale(identifier: "es"))))")
	}
	
	func retirar(cantidad: Double) {
		if cantidad <= saldo {
			saldo -= cantidad
			print("El nuevo saldo es \(saldo.formatted(.currency(code: "eur").locale(Locale(identifier: "es"))))")
		} else {
			print("Operación no permitida: la cantidad máxima a retirar es \(saldo.formatted(.currency(code: "eur").locale(Locale(identifier: "es"))))")
		}
	}
}

let cuenta = CuentaBancaria(titular: "Alguien", saldo: 500)
cuenta.retirar(cantidad: 505)
cuenta.depositar(cantidad: 45)
cuenta.retirar(cantidad: 505)
