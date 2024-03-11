import Foundation

//: ## Ejercicio 14
//: A partir de un diccionario de tareas y una prioridad de 1 a 5 para cada una de ellas, crea un algoritmo capaz de devolver un array con la lista de tareas ordenadas por prioridad y por orden alfabético.

//: Se declara el diccionario y se le asignan algunos valores de test.

var task = [String: Int]()
task["Ir al super"] = 4
task["Ordenar el despacho"] = 3
task["Estudiar Swift"] = 5
task["Salir a correr"] = 3


//: Ordenar por prioridad
//: Creamos el array que contendrá el listado de tareas ordenado por prioridad
//: Creamos una variable intermedia como tupla (String, Int) para ir almacenando el elemento con una prioridad más alta. Usamos una tupla para que coincida con el tipo que devuelve el bucle for interno, el que itera sobre `tempTask`
//: Declaramos un nuevo diccionario que sea una copia del original de las tareas, para usarlo como listado intermedio e ir borrando de él aquella tarea que ya se haya añadido al array resultado
//: Se realiza un bucle con tantas iteraciones como elementos tenga el diccionario original. Para cada iteración, realizamos otro bucle sobre el diccionario temporal para buscar el elemento con mayor prioridad. Una vez encontrado, se añade al array resultado y se borra del diccionario temporal, reiniciando la variable de comparación

var sortByValue = Array<String>()
var mayor = ("", 0)
var tempTask = task

for _ in 0..<task.count {
	for item in tempTask {
		if item.value > mayor.1 {
			mayor = item
		}
	}
	sortByValue.append(mayor.0)
	tempTask.removeValue(forKey: mayor.0)
	mayor = ("", 0)
}

sortByValue



//: Ordenar por orden alfabético. Basta con ordenar el array de las claves, que para este ejemplo son las propias tareas
let sortByKey = Array(task.keys.sorted())
