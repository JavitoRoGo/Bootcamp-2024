import Foundation

//: ## Ejercicio 40
//: Crea un diccionario con varios tipos de alimentos y su precio por kilo.

let food = ["carne": 15.3, "harina": 0.59, "manzanas": 1.02, "sal": 1.29, "azúcar": 0.43]



//: ## Ejercicio 41
//: A partir del diccionario anterior, y con una constante de número entero que indique la cantidad en kilos, informa del precio de dicho alimento.

let kg = 3

for element in food {
	print("El precio de \(kg) kg de \(element.key) es \((Double(kg)*element.value).formatted(.currency(code: "eur").locale(Locale(identifier: "es"))))")
}
