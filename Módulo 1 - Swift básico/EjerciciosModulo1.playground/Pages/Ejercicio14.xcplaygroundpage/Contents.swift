import Foundation

//: ## Ejercicio 14
//: A partir de un diccionario de tareas y una prioridad de 1 a 5 para cada una de ellas, crea un algoritmo capaz de devolver un array con la lista de tareas ordenadas por prioridad y por orden alfabético.

//: Se declara el diccionario y se le asignan algunos valores de test.

var task = [String: Int]()
task["Ir al super"] = 4
task["Ordenar la mesa"] = 3
task["Estudiar Swift"] = 5
task["Salir a correr"] = 3

//: Ordenar por prioridad
let sortByValue = Array(task.values.sorted())

//: Ordenar por orden alfabético
let sortByKey = Array(task.keys.sorted())
