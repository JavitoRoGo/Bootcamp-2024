//
//  SuperHeroInteractor.swift
//  EjUIKit-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 11/3/24.
//

import Foundation

protocol DataInteractor {
	func loadData() throws -> [SuperHero]
}

struct SuperHeroInteractor: DataInteractor {
	static let shared = SuperHeroInteractor()
	
	private init() { }
	
	func loadData() throws -> [SuperHero] {
		guard let url = Bundle.main.url(forResource: "SuperHeroes", withExtension: "json") else { return [] }
		let data = try Data(contentsOf: url)
		return try JSONDecoder().decode([SuperHero].self, from: data)
	}
}
