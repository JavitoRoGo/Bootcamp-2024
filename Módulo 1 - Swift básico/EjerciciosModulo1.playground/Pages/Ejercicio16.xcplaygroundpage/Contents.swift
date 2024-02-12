import Foundation

//: ## Ejercicio 16
//: Crea un diccionario con 5 nombres de persona con el dato apellido y nombre separado por coma, y ordénalos de forma que estén ordenados por el nombre, no por el apellido.

//: Crear el diccionario con datos de 5 personas.
var people = [String: String]()
people["Pepe"] = "Pérez"
people["Lorenzo"] = "Lorenzo"
people["Ana"] = "García"
people["Luisa"] = "Gómez"
people["Alberto"] = "Ruipérez"

//: Crear un array para mostrarlos en la forma Apellido, Nombre, ordenado por nombre.
//: Uso de bucle `for-in` para rellenar el array a partir del diccionario ordenado
var list = [String]()

for name in people.keys.sorted() {
	if let surname = people[name] {
		list.append("\(surname), \(name)")
	}
}
