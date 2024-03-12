//
//  SuperHero.swift
//  EjUIKit-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 11/3/24.
//

import Foundation

struct SuperHero: Codable {
	let id: UUID
	let nombreReal: String
	let apodo: String
	let descripcion: String
	let edad: Int
	let poderes: [Poderes]
	let imagen: String
	
	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		let stringid = try container.decode(String.self, forKey: .id)
		if let uuid = UUID(uuidString: stringid) {
			self.id = uuid
		} else {
			self.id = UUID()
		}
		self.nombreReal = try container.decode(String.self, forKey: .nombreReal)
		self.apodo = try container.decode(String.self, forKey: .apodo)
		do {
			self.descripcion = try container.decode(String.self, forKey: .descripcion)
		} catch {
			self.descripcion = "Sin descripción disponible"
		}
		self.edad = try container.decode(Int.self, forKey: .edad)
		let array = try container.decode([String].self, forKey: .poderes)
		self.poderes = array.map { Poderes(rawValue: $0) ?? .desconocido }
		self.imagen = try container.decode(String.self, forKey: .imagen)
	}
}

