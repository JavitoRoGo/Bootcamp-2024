import Foundation

//: ## Ejercicio 18
//: A partir de una constante **edad** determina si la persona está en la infancia, juventud, adulto, madurez, o vejez.

//: Se define la edad y se usa una sentencia `switch-case` con rangos para devolver el resultado.

let age = 44

switch age {
	case 0...12:
		print("La persona está en su infancia")
	case 13...24:
		print("La persona está en su juventud")
	case 25...36:
		print("La persona es adulta")
	case 37...64:
		print("La persona está en su madurez")
	case 65...110:
		print("La persona está en su vejez")
	default:
		print("Ups, esa edad no es posible...")
}
