import Foundation

//: ## Ejercicio 26
/*: Vamos a crear un colegio donde crearemos la estructura de datos necesarios usando structs en vez de clases.
- Struct para los Profesores, con nombre y edad.
- Struct para las Asignaturas, con nombre de asignatura y cursos donde se imparte.
- Struct para los Alumnos, con nombre, edad y curso.
- Struct para los Cursos con el tutor (profesor) y los alumnos.
- Struct del Colegio con los distintos cursos del mismo.
Queremos poder extraer listados y/o conteo de las asignaturas que imparte cada profesor, cuántos alumnos tiene cada uno y cuántos alumnos distintos hay en el colegio que al menos estén en una asignatura.
Para probar que funciona crea una serie de datos de prueba.
*/

struct Profesor {
	let nombre: String
	var edad: Int
}

struct Asignatura {
	let nombre: String
	var cursos: [Curso]
	var profesor: Profesor
}

struct Alumno {
	let nombre: String
	var edad: Int
	var curso: Curso?
}

struct Curso {
	let nombre: String
	var tutor: Profesor
	var alumnos: [Alumno]
	var asignaturas: [Asignatura]
}

struct Colegio {
	let nombre: String
	var cursos: [Curso]
	var asignaturas: [Asignatura]
	var profesores: [Profesor]
	var alumnos: [Alumno]
}

// Profesores
let mcGonagal = Profesor(nombre: "Minerva McGonagal", edad: 66)
let snape = Profesor(nombre: "Severus Snape", edad: 55)
let dumbledore = Profesor(nombre: "Albus Dumbledore", edad: 77)

// Alumnos
var potter = Alumno(nombre: "Harry Potter", edad: 10)
var hermione = Alumno(nombre: "Hermione Granger", edad: 10)
var fred = Alumno(nombre: "Fred Weasley", edad: 11)
var george = Alumno(nombre: "George Weasley", edad: 11)

// Asignaturas
var pociones = Asignatura(nombre: "Pociones", cursos: [], profesor: snape)
var hechizos = Asignatura(nombre: "Hechicería", cursos: [], profesor: mcGonagal)
var curaciones = Asignatura(nombre: "Curaciones", cursos: [], profesor: mcGonagal)
var artesOscuras = Asignatura(nombre: "Defensa contra las artes oscuras", cursos: [], profesor: dumbledore)

// Cursos
var primerAño = Curso(nombre: "Primer Año", tutor: mcGonagal, alumnos: [], asignaturas: [])
var segundoAño = Curso(nombre: "Segundo Año", tutor: snape, alumnos: [], asignaturas: [])

// Completado de datos
primerAño.alumnos = [potter, hermione]
primerAño.asignaturas = [pociones, curaciones, hechizos, artesOscuras]
segundoAño.alumnos = [fred, george]
segundoAño.asignaturas = [pociones, curaciones, hechizos, artesOscuras]

pociones.cursos = [primerAño, segundoAño]
curaciones.cursos = [primerAño, segundoAño]
hechizos.cursos = [primerAño, segundoAño]
artesOscuras.cursos = [primerAño, segundoAño]

potter.curso = primerAño
hermione.curso = primerAño
fred.curso = segundoAño
george.curso = segundoAño

// Colegio
var hogwarts = Colegio(nombre: "Hogwarts", cursos: [primerAño, segundoAño], asignaturas: [pociones, curaciones, hechizos, artesOscuras], profesores: [mcGonagal, snape, dumbledore], alumnos: [potter, hermione, fred, george])



// Listado de asignaturas por profesor
for profesor in hogwarts.profesores {
	var asignaturas = [String]()
	for asignatura in hogwarts.asignaturas where asignatura.profesor.nombre == profesor.nombre {
		asignaturas.append(asignatura.nombre)
	}
	print("\(profesor.nombre) imparte las asignaturas de \(asignaturas.formatted(.list(type: .and).locale(Locale(identifier: "es"))))")
}


// Alumnos por profesor
for profesor in hogwarts.profesores {
	var alumnos = 0
	for asignatura in hogwarts.asignaturas where asignatura.profesor.nombre == profesor.nombre {
		for index in 0..<asignatura.cursos.count {
			alumnos += asignatura.cursos[index].alumnos.count
		}
	}
	print("\(profesor.nombre) tiene \(alumnos) alumnos")
}


// Alumnos que estén en alguna asignatura
var lista = [String]()
for alumno in hogwarts.alumnos where alumno.curso?.asignaturas.count != 0 {
	lista.append(alumno.nombre)
}
let resultado = Array(Set(lista))

print("Los alumnos son: \(resultado.formatted(.list(type: .and).locale(Locale(identifier: "es"))))")




//: Versión con funciones de orden más alto

// Listado de asignaturas por profesor
hogwarts.profesores.forEach { profesor in
	let asignaturas = hogwarts.asignaturas
		.filter({ $0.profesor.nombre == profesor.nombre })
		.map { $0.nombre }
	
	print("\(profesor.nombre) imparte las asignaturas de \(asignaturas.formatted(.list(type: .and).locale(Locale(identifier: "es"))))")
}


// Alumnos por profesor
hogwarts.profesores.forEach { profesor in
	var alumno = 0
	alumno += hogwarts.asignaturas
		.filter({ $0.profesor.nombre == profesor.nombre })
		.flatMap { asignatura in
			var alumnos = [Alumno]()
			for index in 0..<asignatura.cursos.count {
				alumnos.append(contentsOf: asignatura.cursos[index].alumnos)
			}
			return alumnos
		}
		.count

	print("\(profesor.nombre) tiene \(alumno) alumnos")
}


// Alumnos que estén en alguna asignatura
let listado = Set(
	hogwarts.alumnos
		.filter {
			$0.curso?.asignaturas.count != 0
		}
		.map { $0.nombre }
)

print("Los alumnos son: \(listado.formatted(.list(type: .and).locale(Locale(identifier: "es"))))")
