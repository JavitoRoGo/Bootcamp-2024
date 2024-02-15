import Foundation

//: ## Ejercicio 43
//: A partir de la cantidad 3.500,23 haz un formateador que la represente como una divisa con el símbolo del EURO.

//: Tenemos dos formas de dar formato a un número: con el formateador `NumberFormatter` utilizado hasta la llegada de iOS 15, y dándole formato directamente dentro de la cadena interpolada al estilo de iOS 15 y posterior.

let num = 3_500.23

//: Formateador de iOS 14 y anteriores:

let formater = NumberFormatter()
formater.numberStyle = .currency
formater.currencyCode = "eur"
formater.locale = Locale(identifier: "es")
formater.string(from: NSNumber(value: num))

//: Formateador de iOS 15 en adelante

num.formatted(.currency(code: "eur").locale(Locale(identifier: "es")))
