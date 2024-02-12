import Foundation

//: ## Ejercicio 1
//: Crea 3 datos de ejemplo para cada tipo de dato básico en Swift.

//: Los tipos básicos en Swift son varios (Int8, Int16...), pero los más usados son Int, Double, Bool, String, Data, Date y URL.

//: Int representa un número entero con una precisión que depende el dispositivo en el que se muestre, aunque lo normal son 64 bits.
//: Por tanto, comprende los valores desde -2^63 hasta 2^63.
//: Ejemplo de valores Int:
let integer1 = 19
let integer2 = -2397498
let integer3 = Int.max


//: Double representa un número decimal de 64 bits de longitud, con hasta 15 decimales
let double1 = 239847.2342
let double2 = -238490.90
let double3 = 890.23223


//: Bool representa un booleano o valor lógico que solo puede tomar dos valores: verdadero o falso
let bool1 = true
let bool2 = false


//: String representa una cadena de texto
let text1 = "Esto es una cadena"
let text2 = #"Esto es una cadena con "caracteres de escape""#
let text3 = """
Esto es también una cadena.
Pero en varias líneas.
"""


//: Data representa un dato en bruto, una colección de UInt8 o bytes sin formato
let data1 = Data()
let data2 = Data(text1.utf8)
let data3 = Data(count: integer1)


//: Date representa una fecha, incluyendo valores como la fecha en sí, la hora, zona horaria, etc.
let date1 = Date()
let date2 = Date(timeIntervalSince1970: 23423423423)
let date3 = Date(timeInterval: double2, since: date1)


//: URL (uniform resource locator) representa la ruta de acceso a un archivo en un dispositivo, o a un servidor o página web
//: La forma más frecuente de declarar un tipo URL es a través de un String
let url1 = URL(string: "https://apple.com")!
let url2 = URL(filePath: "file:///Users/myUser/Developer")
let url3 = URL.applicationDirectory
