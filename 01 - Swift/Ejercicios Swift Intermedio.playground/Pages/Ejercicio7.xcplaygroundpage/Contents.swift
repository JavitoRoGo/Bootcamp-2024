import Foundation

//: ## Ejercicio 7
//: Crea una enumeración con los días de la semana y crea un flujo de tipo switch que dé un mensaje que defina cada día de la semana o si estamos en fin de semana.

enum Days: String {
	case lunes
	case martes
	case miercoles
	case jueves
	case viernes
	case sabado
	case domingo
}

let day: Days = [.lunes, .martes, .miercoles, .jueves, .viernes, .sabado, .domingo].randomElement()!

switch day {
	case .lunes, .martes, .miercoles, .jueves:
		print("Hoy es \(day.rawValue)")
	case .viernes:
		print("Hoy es \(day.rawValue) y el cuerpo lo sabe!")
	case .sabado, .domingo:
		print("¡¡Fin de semana!!")
}
