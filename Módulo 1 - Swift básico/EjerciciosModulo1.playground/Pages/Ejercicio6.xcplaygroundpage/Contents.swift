
import Foundation

//: ## Ejercicio 6
//: Determina mediante **`if`** anidados si una temperatura de 0 a 40 grados es o no es calurosa en grupo de 10 grados que determinen frío, templado, calor, mucho calor.

//: Uso de varias instrucciones `if-else` para mostrar un resultado en función del valor de la temperatura.
//: Para cada sentencia `if` podría hacerse una doble comprobación del valor tanto por arriba como por abajo, pero el código quedaría más extenso.
//: En cambio, si tenemos en cuenta el orden en el que hacemos las comprobaciones, podemos simplificar el código y hacer solo una comprobación por cada `if`. Salvo en el primer caso, en el que sí comprobamos también que la temperatura no pase del máximo de 40.

let temperature = 20

if temperature > 30 && temperature <= 40 {
	print("Hace mucho calor")
} else if temperature > 20 {
	print("Hace calor")
} else if temperature > 10 {
	print("Está templado")
} else if temperature > 0 {
	print("Hace frío")
} else {
	print("Valor de temperatura no válido")
}
