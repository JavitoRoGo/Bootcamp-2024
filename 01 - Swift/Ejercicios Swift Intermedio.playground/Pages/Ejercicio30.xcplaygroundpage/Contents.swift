import Foundation

//: ## Ejercicio 30
//: Crea una función que convierta números enteros en su versión en números romanos, partiendo de sus equivalencias.

func convierteARomanoElNúmero(_ num: Int) -> String {
	if num < 0 || num > 3999 {
		return "El número debe ser mayor de cero y menor de 3999"
	}
	
	var unidadesRomano = ""
	var decenasRomano = ""
	var centenasRomano = ""
	var millaresRomano = ""
	
	let unidades = num % 10
	let decenas = (num % 100 - unidades) / 10
	let centenas = (num % 1000 - decenas - unidades) / 100
	let millares = (num % 10000 - centenas - decenas - unidades) / 1000
	
	switch unidades {
		case 1,2,3:
			for _ in 1...unidades {
				unidadesRomano += "I"
			}
		case 4:
			unidadesRomano = "IV"
		case 5:
			unidadesRomano = "V"
		case 6,7,8:
			unidadesRomano = "V"
			for _ in 1...(unidades - 5) {
				unidadesRomano += "I"
			}
		case 9:
			unidadesRomano = "IX"
		default:
			break
	}
	
	switch decenas {
		case 1,2,3:
			for _ in 1...decenas {
				decenasRomano += "X"
			}
		case 4:
			decenasRomano = "XL"
		case 5:
			decenasRomano = "L"
		case 6,7,8:
			decenasRomano = "L"
			for _ in 1...(decenas - 5) {
				decenasRomano += "X"
			}
		case 9:
			decenasRomano = "XC"
		default:
			break
	}
	
	switch centenas {
		case 1,2,3:
			for _ in 1...centenas {
				centenasRomano += "C"
			}
		case 4:
			centenasRomano = "CD"
		case 5:
			centenasRomano = "D"
		case 6,7,8:
			centenasRomano = "D"
			for _ in 1...(centenas - 5) {
				centenasRomano += "C"
			}
		case 9:
			centenasRomano = "CM"
		default:
			break
	}
	
	switch millares {
		case 1,2,3:
			for _ in 1...millares {
				millaresRomano += "M"
			}
//		case 4:
//			millaresRomano = "IV"
//		case 5:
//			millaresRomano = "V"
//		case 6,7,8:
//			millaresRomano = "V"
//			for _ in 1...(millares - 5) {
//				millaresRomano += "I"
//			}
//		case 9:
//			millaresRomano = "IX"
		default:
			break
	}
	
	return "\(millaresRomano)\(centenasRomano)\(decenasRomano)\(unidadesRomano)"
}

convierteARomanoElNúmero(3999)
