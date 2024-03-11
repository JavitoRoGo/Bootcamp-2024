import Foundation

//: ## Ejercicio 6
//: Crea un diccionario que contenga el nombre y la edad de 10 personas. Luego, obtén el dato de cada uno de ellos y busca la persona que tiene más edad y la que menos de todo el diccionario.

var people: [Int: (String, Int)] = [
	1: ("Frodo", 33),
	2: ("Sam", 31),
	3: ("Merry", 39),
	4: ("Pippin", 37),
	5: ("Gandalf", 333),
	6: ("Aragorn", 56),
	7: ("Legolas", 278),
	8: ("Gimli", 81),
	9: ("Boromir", 30),
	10: ("Sauron", 1234)
]

var oldest = ("", 0)
var youngest = ("", 1000)

for person in people.values {
	if person.1 > oldest.1 {
		oldest = person
	}
	if person.1 < youngest.1 {
		youngest = person
	}
}

print("La persona de más edad es \(oldest.0) con \(oldest.1) años")
print("La persona de menor edad es \(youngest.0) con \(youngest.1) años")
