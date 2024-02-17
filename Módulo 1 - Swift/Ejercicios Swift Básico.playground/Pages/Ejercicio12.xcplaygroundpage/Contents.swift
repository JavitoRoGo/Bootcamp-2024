import Foundation

//: ## Ejercicio 12
//: Crea una tupla para almacenar los nombres y edades de cinco personas. Encuentra el nombre de la persona más joven y la más vieja.

//: Se crean las 5 personas como una tupla del tipo `(String, Int)` y se asignan a un array.

let person1: (String, Int) = ("Pedro", 22)
let person2 = ("Juan", 11)
let person3 = ("Ana", 33)
let person4 = ("Laura", 55)
let person5 = ("Sara", 44)

let people = [person1, person2, person3, person4, person5]

//: Definimos las variables que contendrán el dato de la persona más vieja y la más joven, inicializándolas con el primer elemento del array.
//: En este caso podemos garantizar sin problema que el primer elemento existe, y podemos hacer un desempaquetado forzado seguro

var oldest: (String, Int) = people.first!
var youngest: (String, Int) = people.first!


for person in people {
	if person.1 > oldest.1 {
		oldest = person
	}
	if person.1 < youngest.1 {
		youngest = person
	}
}

print("La persona más vieja es \(oldest.0)")
print("La persona más joven es \(youngest.0)")
