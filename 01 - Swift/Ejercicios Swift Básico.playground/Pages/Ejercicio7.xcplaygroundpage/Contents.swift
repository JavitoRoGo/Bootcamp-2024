import Foundation

//: ## Ejercicio 7
//: Haz el mismo ejercicio que el 6 pero usando **`switch/case`**.

//: Se usa un `switch` en este caso para comprobar el valor de la temperatura.
//: Los `case` son exclusivos, por lo que el orden o la forma en que los definamos importa.
//: En este caso usaremos rangos para valorar cada `case`.
//: Al final debemos incluir un caso por defecto para que el `switch` sea exhaustivo y contemple todos los posibles valores de temperatura.

let temperature = 33

switch temperature {
	case 0...10:
		print("Hace frío")
	case 11...20:
		print("Está templado")
	case 21...30:
		print("Hace calor")
	case 31...40:
		print("Hace mucho calor")
	default:
		print("Valor de temperatura no válido")
}
