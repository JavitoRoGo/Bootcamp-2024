import Foundation

//: ## Ejercicio 12
//: Crea una tupla para almacenar los nombres y edades de cinco personas. Encuentra el nombre de la persona más joven y la más vieja.

//: Se crean las 5 personas como una tupla del tipo `(String, Int)` y se asignan a un array.

let person1: (String, Int) = ("Pedro", 11)
let person2 = ("Juan", 22)
let person3 = ("Ana", 33)
let person4 = ("Laura", 44)
let person5 = ("Sara", 55)

let people = [person1, person2, person3, person4, person5]

//: Se ordena el array por edades.

let sortedPeople = people.sorted(by: { $0.1 < $1.1 })

//: Obtenemos el dato de la persona más joven a través del primer elemento del array ordenado; y la más vieja como el último elemento.
//: Se usa la sentencia `if-let` para desempaquetar el opcional que devuelve `first` y `last`.

if let youngest = sortedPeople.first {
	print("La persona más joven es \(youngest.0)")
} else {
	print("No sabemos quién es el más joven")
}
if let oldest = sortedPeople.last {
	print("La persona más vieja es \(oldest.0)")
} else {
	print("No sabemos quién es el más viejo")
}
