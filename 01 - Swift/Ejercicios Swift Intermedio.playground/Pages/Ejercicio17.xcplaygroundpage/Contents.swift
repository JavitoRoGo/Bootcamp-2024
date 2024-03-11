import Foundation

//: ## Ejercicio 17
//: Agrega un método a la clase CuentaBancaria del ejercicio 13 llamado info que muestre el titular de la cuenta y el saldo actual en la consola. Luego, crea un objeto de la clase CuentaBancaria e inicializa las propiedades con valores y llama al método info para mostrar la información de la cuenta en la consola. Después, llama al método depositar para agregar una cantidad a la cuenta y llama nuevamente al método info para mostrar el saldo actualizado en la consola.

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
	
	func info() {
		print("Titular: \(titular)\nSaldo: \(saldo.formatted(.currency(code: "eur").locale(Locale(identifier: "es"))))")
	}
}

let cuenta = CuentaBancaria(titular: "Alguien", saldo: 500)
cuenta.info()
cuenta.depositar(cantidad: 105.33)
cuenta.info()
