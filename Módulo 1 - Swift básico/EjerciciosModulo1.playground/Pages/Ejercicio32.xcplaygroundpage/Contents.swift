import Foundation

//: ## Ejercicio 32
//: Crea un diccionario por alumno con sus asignaturas y las notas de cada asignatura. Al menos 5 alumnos. Calcula la nota media de todos ellos en cada asignatura y la media de la clase.

let alumno1 = ["lengua": 8, "matemáticas": 8, "inglés": 8, "informática": 8]
let alumno2 = ["lengua": 7, "matemáticas": 7, "inglés": 7, "informática": 7]
let alumno3 = ["lengua": 4, "matemáticas": 4, "inglés": 4, "informática": 4]
let alumno4 = ["lengua": 2, "matemáticas": 2, "inglés": 2, "informática": 2]
let alumno5 = ["lengua": 9, "matemáticas": 9, "inglés": 9, "informática": 9]

//: Para obtener la media de todos los alumnos en cada asignatura, lo primero es agruparlos en un array de diccionarios para iterar sobre todos ellos.
//: Luego definimos la variable que acogerá la media por asignatura, y un array con todas las asignaturas para iterar sobre él y obtener la media en todas las asignaturas.

let clase = [alumno1, alumno2, alumno3, alumno4, alumno5]
let signatures = ["lengua", "matemáticas", "inglés", "informática"]
var mediaPorAsignatura = 0
var notasGlobales = 0

for signature in signatures {
	var count = 0
	var notas = 0
	for alumno in clase {
		if let nota = alumno[signature] {
			notas += nota
			count += 1
		}
	}
	mediaPorAsignatura = notas / count
	notasGlobales += mediaPorAsignatura
	
	print("La nota media de \(signature) es \(mediaPorAsignatura)")
	mediaPorAsignatura = 0
}

print("La nota media de la clase es \(notasGlobales / signatures.count)")

//: La nota media de toda la clase sería la media de todos los alumnos en todas las asignaturas.
