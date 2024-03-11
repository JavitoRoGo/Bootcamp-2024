import Foundation

//: ## Ejercicio 1
//: ¿Qué distintos tipos de datos existen en Swift y cuál es su función? Crea dos datos prototipo de cada tipo de dato en Swift para ejemplificar su función principal.

//: Además de los tipos básicos ya vistos en el ejercicio 1 de Swift básico (Int, Double, Bool, String, Data, Date y URL), tenemos las colecciones o agrupaciones de datos y las estructuras de datos.

//: ### Agrupaciones de datos

//: Array.
//: Un array o colección es una agrupación ordenada de datos del mismo tipo, en la que podemos acceder a cada elemento a través de posición o índice. Se representa con corchetes y sus elementos van separados por comas. Podemos recorrer sus elementos a través de un bucle for-in.
let array1 = [1,2,3,4,5]
let array2 = ["a", "b", "c", "d", "e"]


//: Set.
//: Un conjunto o set es una agrupación no ordenada de elementos del mismo tipo, en los que el índice o clave es el propio valor, por lo que un conjunto no puede tener elementos duplicados Podemos recorrer sus elementos a través de un bucle for-in. Se representa con corchetes pero tenemos que especificar que se trata de Set; también puede inicializarse a través de un array.
let conjunto1 = Set(array1)
let conjunto2: Set = [4,6,2,8,5]


//: Diccionario.
//: Es una agrupación no ordenada de elementos, que se caracteriza por construirse con un par de valores clave-valor. Las claves no pueden tener valores duplicados y pueden ser de cualquier tipo que sea Hashable; mientras que los valores pueden ser de cualquier tipo. Podemos acceder al valor a través de su clave, y podemos recorrer sus elementos a través de un bucle for-in. Se representa con corchetes y los elementos separados por coma, pero cada elemento es un par clave-valor que se separa con los dos puntos.
let diccionario1: [Int: Int] = [1:1, 2:5, 9:4]
let diccionario2: [String: Bool] = ["hola": true, "adiós": false]


//: Tupla.
//: Agrupación de valores que pueden tener diferentes tipos de datos, accesible cada uno de ellos a través de su posición, aunque también se les puede asignar un nombre. Se representa entre paréntesis con sus elementos separados por comas.
let tupla1: (Int, Int) = (3,9)
let tupla2: (nombre: String, edad: Int, trabajo: Bool) = ("Pepe", 22, true)


//: ### Estructuras de datos

//: Clases.
//: Representan una abstracción y se usan para crear un objeto o tipo de dato más complejo. Se definen con la palabra reservada `class` y pueden tener propiedades y métodos. Es el único tipo de dato por referencia en Swift. Además, las clases soportan herencia, por lo que una clase hija puede heredar propiedades y métodos de otra clase.
class Coche {
	let marca: String
	let modelo: String
	let numPlazas: Int
	
	init(marca: String, modelo: String, numPlazas: Int) {
		self.marca = marca
		self.modelo = modelo
		self.numPlazas = numPlazas
	}
	
	func arrancar() {
		print("Brum brum...")
	}
}

class Seat: Coche {
	let color: String
	
	init(color: String, modelo: String, numPlazas: Int) {
		self.color = color
		super.init(marca: "Seat", modelo: modelo, numPlazas: numPlazas)
	}
}


//: Struct
//: Prácticamente iguales a las clases, salvo que no soportan herencia y no son un tipo de dato por referencia, sino de copia por valor. También se usan como "molde" para crear instancias de objetos complejos, y pueden tener propiedades y métodos.
struct Libro {
	let titulo: String
	let autor: String
	let paginas: Int
	
	func leer() {
		print("Estoy leyendo el libro \(titulo)")
	}
}

struct Estanteria {
	let fila: Int
	let columna: Int
	var libros: [Libro]
}


//: Enumeraciones
//: Los enums son un tipo de dato con valores prefijados, es decir, una instancia de un enum solo podrá tomar uno de los valores predefinidos dentro el enum. Pueden tiparse para asignarles un determinado valor en su propiedad rawValue, e incluso pueden tener datos asociados.
enum Sabor: String {
	case chocolate, vainilla, fresa, nata, menta
}

enum CustomError {
	case global(String)
	case red(Int)
	case bug(String)
}
