import Foundation

//: ## Determinar el día de la semana para una fecha concreta
/*:
 q es el día del mes
 m es el mes menos dos, es decir, marzo sería 1
 k son las dos cifras finales del año en formato yyyy
 j son las cifras del siglo o dos primeras cifras del año en formato yyyy
 */

let q = 25
let mes = 1
let m = mes - 2 < 1 ? mes - 2 + 12 : mes - 2
let k = 24
let j = 20

let f1 = q + ((13*(m+1) / 5))
let f2 = k + k/4 + j/4 - 2*j
let result = (f1 + f2) % 7

let days = ["sábado", "domingo", "lunes", "martes", "miércoles", "jueves", "viernes"]

print("El día \(q)/\(mes)/\(j)\(k) fue \(days[result])")

print("Fin")
