//
//  SuperHero.swift
//  EjUIKit-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 11/3/24.
//

import Foundation

struct SuperHeroDTO: Codable {
	let id: String
	let nombreReal: String
	let apodo: String
	let descripcion: String?
	let edad: Int
	let poderes: [String]
	let imagen: String
	let historia: String?
	
	var toSuperHero: SuperHero {
		var uuid = UUID()
		if let newUuid = UUID(uuidString: id) { uuid = newUuid }
		let poderesEnum = poderes.map { Poderes(rawValue: $0) ?? .desconocido }
		var historiaDTO = ""
		if let descripcion {
			historiaDTO = descripcion
		} else if let historia {
			historiaDTO = historia
		}
		
		return SuperHero(id: uuid, nombre: nombreReal, apodo: apodo, edad: edad, poderes: poderesEnum, imagen: imagen, historia: historiaDTO)
	}
}

struct SuperHero: Codable {
	let id: UUID
	let nombre: String
	let apodo: String
	let edad: Int
	let poderes: [Poderes]
	let imagen: String
	let historia: String
}
