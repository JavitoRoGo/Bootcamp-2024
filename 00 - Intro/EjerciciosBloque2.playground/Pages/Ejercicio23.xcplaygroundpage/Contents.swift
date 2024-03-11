import Foundation

//: ## Número de días del mes

let mes = "julio"

switch mes {
	case "febrero":
		print("\(mes) tiene 28 días")
	case "enero", "marzo", "mayo", "julio", "agosto", "octubre", "diciembre":
		print("\(mes) tiene 31 días")
	case "abril", "junio", "septiembre", "noviembre":
		print("\(mes) tiene 30 días")
	default:
		print("\(mes) no se corresponde con ningún mes")
}

print("Fin")
