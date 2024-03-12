//
//  SuperHeroLogic.swift
//  EjUIKit-SuperHeroes
//
//  Created by Javier Rodríguez Gómez on 11/3/24.
//

import Foundation

final class SuperHeroLogic {
	static let shared = SuperHeroLogic()
	
	let interactor: DataInteractor
	
	var superHeroes: [SuperHero]
	
	private init(interactor: DataInteractor = SuperHeroInteractor.shared) {
		self.interactor = interactor
		self.superHeroes = (try? interactor.loadData()) ?? []
	}
	
	func getHeroAt(_ indexPath: IndexPath) -> SuperHero {
		superHeroes[indexPath.row]
	}
}
