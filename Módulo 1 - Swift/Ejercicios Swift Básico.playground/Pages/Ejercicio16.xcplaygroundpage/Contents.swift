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

//: #

//: Otra interpretación del enunciado sería declarando el diccionario de la siguiente forma:
var otherPeople: [Int: String] = [1: "Pérez, Pepe", 2: "Lorenzo, María", 3: "García, Ana", 4: "Gómez, Luisa", 5: "Olivav, Daneel"]

// En este caso el criterio de ordenación es más complejo porque implica el uso de String.Index para buscar la primera letra del nombre que está tras la coma, ya que apellido y nombre están en la misma cadena

//: Creamos el array que contendrá el listado de nombres ordenado por la inicial del nombre
//: Creamos una variable intermedia como tupla (Int, String) para ir almacenando el elemento con la inicial en un orden inferior. Usamos una tupla para que coincida con el tipo que devuelve el bucle for interno, el que itera sobre `tempPeople`
//: Declaramos un nuevo diccionario que sea una copia del original, para usarlo como listado intermedio e ir borrando de él aquel nombre que ya se haya añadido al array resultado
//: Se realiza un bucle con tantas iteraciones como elementos tenga el diccionario original. Para cada iteración, realizamos otro bucle sobre el diccionario temporal para buscar el elemento con una inicial menor; esta inicial tenemos que buscarla dentro de la cadena usando String.Index. Una vez encontrado el elemento en cuestión, se añade al array resultado y se borra del diccionario temporal, reiniciando las variables temporales de comparación

var sortedList = [String]()
var tempPeople = otherPeople
var inicialAComparar = "Z"
var primerElemento = (0, "Z")


for _ in 0..<otherPeople.count {
	for item in tempPeople {
		guard let index0 = item.value.firstIndex(of: ",") else { continue }
		let inicial = String(item.value[item.value.index(index0, offsetBy: 2)])
		if inicial < inicialAComparar {
			inicialAComparar = inicial
			primerElemento = item
		}
	}
	sortedList.append(primerElemento.1)
	tempPeople.removeValue(forKey: primerElemento.0)
	primerElemento = (0, "")
	inicialAComparar = "Z"
}

sortedList
