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
list


//: Otra interpretación del enunciado sería declarando el diccionario de la siguiente forma:
var otherPeople: [Int: String] = [1: "Nuevededos, Logen", 2: "Bosch, Harry", 3: "Hole, Harry", 4: "Morgan, Dexter", 5: "Olivav, Daneel"]

// En este caso el criterio de ordenación es más complejo porque implica el uso de String.Index para buscar la primera letra del nombre que está tras la coma, ya que apellido y nombre están en la misma cadena

var sortedList = Array(otherPeople.values).sorted(by: {
	guard let index0 = $0.firstIndex(of: ","),
	let index1 = $1.firstIndex(of: ",") else { return true }
	
	return $0[$0.index(index0, offsetBy: 2)] < $1[$1.index(index1, offsetBy: 2)]
})
sortedList
