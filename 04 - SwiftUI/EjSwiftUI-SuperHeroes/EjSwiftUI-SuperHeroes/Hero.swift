//
//  Hero.swift
//  EjSwiftUI-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 24/3/24.
//

import Foundation

struct HeroDTO: Codable {
	let id: String
	let nombreReal: String
	let apodo: String
	let descripcion: String?
	let edad: Int
	let poderes: [String]
	let imagen: String
	let historia: String?
	
	var toHero: Hero {
		let uuid = UUID(uuidString: id) ?? UUID()
		let poderesEnum = poderes.map { Poderes(rawValue: $0) ?? .desconocido }
		var resumen = ""
		if let descripcion {
			resumen = descripcion
		} else if let historia {
			resumen = historia
		}
		
		return Hero(id: uuid, nombre: nombreReal, apodo: apodo, edad: edad, poderes: poderesEnum, imagen: imagen, historia: resumen)
	}
}

struct Hero: Codable, Identifiable, Hashable {
	let id: UUID
	let nombre: String
	let apodo: String
	let edad: Int
	let poderes: [Poderes]
	let imagen: String
	let historia: String
	
	var listaPoderes: String {
		poderes.map { $0.rawValue }.formatted(.list(type: .and).locale(Locale(identifier: "es")))
	}
}

func getHeros() -> [Hero] {
	guard let url = Bundle.main.url(forResource: "SuperHeroes", withExtension: "json") else { return [] }
	do {
		let data = try Data(contentsOf: url)
		return try JSONDecoder().decode([HeroDTO].self, from: data).map(\.toHero)
	} catch {
		return []
	}
}
