import Foundation

//: ## Ejercicio 22
//: Agrega un método a la clase CuentaBancaria de los ejercicios 13 y 17 llamado transferir que reciba dos parámetros (otraCuenta y cantidad) y transfiera la cantidad indicada de la cuenta actual a la cuenta indicada en el parámetro otraCuenta. Controla que haya saldo suficiente para hacer esta operación. Luego, crea dos objetos de la clase CuentaBancaria e inicializa las propiedades con valores y llama al método transferir para transferir una cantidad de una cuenta a otra.

final class CuentaBancaria {
	let titular: String
	var saldo: Double
	
	init(titular: String, saldo: Double) {
		self.titular = titular
		self.saldo = saldo
	}
	
	func depositar(cantidad: Double) {
		saldo += cantidad
		print("Se ha ingresado correctamente \(cantidad.formatted(.currency(code: "eur").locale(Locale(identifier: "es")))) y el nuevo saldo es \(saldo.formatted(.currency(code: "eur").locale(Locale(identifier: "es"))))")
	}
	
	func retirar(cantidad: Double) {
		if cantidad <= saldo {
			saldo -= cantidad
			print("Se ha retirado correctamente \(cantidad.formatted(.currency(code: "eur").locale(Locale(identifier: "es")))) y el nuevo saldo es \(saldo.formatted(.currency(code: "eur").locale(Locale(identifier: "es"))))")
		} else {
			print("Operación no permitida: la cantidad máxima a retirar es \(saldo.formatted(.currency(code: "eur").locale(Locale(identifier: "es"))))")
		}
	}
	
	func info() {
		print("Titular: \(titular)\nSaldo: \(saldo.formatted(.currency(code: "eur").locale(Locale(identifier: "es"))))")
	}
	
	func transferirCantidad(_ cantidad: Double, aLaCuenta cuenta: CuentaBancaria) {
		if cantidad <= saldo {
			saldo -= cantidad
			cuenta.saldo += cantidad
			print("Se ha transferido correctamente \(cantidad.formatted(.currency(code: "eur").locale(Locale(identifier: "es")))) y el nuevo saldo es \(saldo.formatted(.currency(code: "eur").locale(Locale(identifier: "es"))))")
		} else {
			print("Operación no permitida: la cantidad máxima a transferir es \(saldo.formatted(.currency(code: "eur").locale(Locale(identifier: "es"))))")
		}
	}
}

let cuenta1 = CuentaBancaria(titular: "Alguien", saldo: 500)
let cuenta2 = CuentaBancaria(titular: "Otra persona", saldo: 100)

cuenta1.transferirCantidad(135.88, aLaCuenta: cuenta2)
cuenta2.saldo
