import Foundation

//: ## Ejercicio 42
//: A partir de la fecha de hoy crea un formateador que muestre una representación como esta: "viernes, 06 de octubre de 2023, 18:44".

//: Tenemos dos formas de dar formato a una fecha: con el formateador `DateFormatter` utilizado hasta la llegada de iOS 15, y dándole formato directamente dentro de la cadena interpolada al estilo de iOS 15 y posterior.

let today = Date()

//: Formateador de iOS 14 y anteriores:

let dateFormatter = DateFormatter()
dateFormatter.locale = Locale(identifier: "es")
dateFormatter.dateFormat = "EEEE, dd 'de' MMMM 'de' yyyy, HH:mm"
dateFormatter.string(from: today)

//: Formateador de iOS 15 en adelante:

today.formatted(.dateTime.weekday(.wide).day(.twoDigits).month(.wide).year().hour().minute().locale(Locale(identifier: "es")))
