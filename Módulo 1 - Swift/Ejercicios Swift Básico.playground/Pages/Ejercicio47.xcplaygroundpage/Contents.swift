import Foundation

//: ## Ejercicio 47
//: Dado un array de 100 números aleatorios de tipo entero, descarta los valores repetidos y averigua cuál el segundo valor mayor en él.

//: Construimos el array igual que en el ejercicio 31-bis:

var array = [Int]()
for _ in 1...100 {
	let num = Int.random(in: 1...1000)
	array.append(num)
}

//: Para descartar los valores repetidos podemos transformar el array en un conjunto o Set.
//: Para obtener el segundo valor mayor ordenamos el conjunto (y vuelve así a ser un array). A esta colección ordenada le quitamos el último valor, y a su vez, preguntamos por el último elemento del array resultante.
//: Pero al preguntar por el último elemento tenemos que desempaquetarlo porque se nos devuelve como opcional.
//: Todo esto puede hacerse en una sola línea gracias a las interfaces fluidas.

let segundoMayor = Set(array).sorted().dropLast().last ?? 0

print("El segundo valor mayor es \(segundoMayor)")
