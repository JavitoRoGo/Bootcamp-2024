import Foundation

//: ## Ejercicio 3
//: Realiza un algoritmo que sea capaz de discernir si un número es divisible por otro, en distintos tipos de datos numéricos, con o sin precisión decimal.

//: Podemos encerrar el algoritmo pedido dentro de una función, y crear otras versiones con diferentes especificaciones en función del tipo de dato a recibir.

func esDivisibleNumero(_ num1: Int, por num2: Int) {
	if num1 % num2 == 0 {
		print("\(num1) es divisible por \(num2)")
	} else {
		print("\(num1) no es divisible por \(num2)")
	}
}

func esDivisibleNumero(_ num1: Double, por num2: Int) {
	if num1.truncatingRemainder(dividingBy: Double(num2)) == 0 {
		print("\(num1) es divisible por \(num2)")
	} else {
		print("\(num1) no es divisible por \(num2)")
	}
}

func esDivisibleNumero(_ num1: Int, por num2: Double) {
	if Double(num1).truncatingRemainder(dividingBy: num2) == 0 {
		print("\(num1) es divisible por \(num2)")
	} else {
		print("\(num1) no es divisible por \(num2)")
	}
}

func esDivisibleNumero(_ num1: Double, por num2: Double) {
	if num1.truncatingRemainder(dividingBy: num2) == 0 {
		print("\(num1) es divisible por \(num2)")
	} else {
		print("\(num1) no es divisible por \(num2)")
	}
}
